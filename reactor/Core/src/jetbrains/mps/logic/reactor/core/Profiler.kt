package jetbrains.mps.logic.reactor.core

import java.util.*

/**
 * @author Fedor Isakov
 */

class Profiler {

    companion object {
        private var lastTokenId = 0
    }

    private val tokenStack = LinkedList<Token>()

    constructor() {
        tokenStack.push(Token("_", ++lastTokenId))
    }

    fun start(name: String): Token {
        val tok = Token(name, ++lastTokenId)
        tokenStack.peek().addChild(tok)
        tokenStack.push(tok)
        return tok
    }

    fun end(tok: Token? = null) {
        val pop = tokenStack.pop()
        if (tok != null && pop !== tok) throw IllegalStateException("wrong token")
        pop.end()
    }

    // name -> (duration, freq)
    fun rawProfilingData(): Map<String, Pair<Long,Int>> {
        val name2duration = HashMap<String, Pair<Long,Int>>()
        tokenStack.peek().mergeDurations(name2duration)
        return name2duration
    }

    fun formattedData(): Map<String, String> {
        return rawProfilingData().entries.sortedBy { e -> -(e.value.first) }.map { e ->
            val (dur, freq) = e.value
            val millis= dur / 1000000
            e.key.to("%1\$Ts.%1\$TLs (%2\$d times)".format(millis, freq))
        }.toMap()
    }

    fun clear() {
        tokenStack.clear()
    }

}

class Token(val name: String, val id: Int) {

    val startNano: Long = System.nanoTime()

    var endNano: Long? = null
        private set

    private val children = ArrayList<Token>()

    fun addChild(ch: Token) {
        children.add(ch)
    }

    fun end() {
        if (endNano != null) throw IllegalStateException("already ended")
        this.endNano = System.nanoTime()
    }

    private fun duration(): Long? = endNano?.minus(startNano)

    private fun ownDuration(): Long? = duration()?.minus(children.map { ch -> ch.duration() ?: 0 }.sum())

    fun mergeDurations(name2duration: MutableMap<String, Pair<Long,Int>>) {
        children.groupBy { ch -> ch.name }.entries.forEach { e ->
            val (dur, freq) = name2duration[e.key] ?: Pair(0L, 0)
            name2duration[e.key] = (dur + e.value.map { ch -> ch.ownDuration() ?: 0 }.sum()).to(freq + e.value.size)
        }
        for (c in children) {
            c.mergeDurations(name2duration)
        }
    }

}

inline fun Profiler?.profile(name: String, proc: () -> Unit): Unit {
    val tok = this?.start(name)
    try {
        proc.invoke()
    }
    finally {
        this?.end(tok)
    }
}

inline fun <R> Profiler?.profile(name: String, function: () -> R): R {
    val tok = this?.start(name)
    try {
        return function.invoke()
    }
    finally {
        this?.end(tok)
    }
}

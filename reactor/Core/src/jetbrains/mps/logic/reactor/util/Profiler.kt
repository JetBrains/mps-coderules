package jetbrains.mps.logic.reactor.util

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
    fun rawProfilingData(): Map<String, DurFreq> {
        val name2duration = HashMap<String, DurFreq>(1000)
        tokenStack.peek().mergeDurations(name2duration)
        return name2duration
    }

    fun formattedData(): Map<String, String> {
        val entries = rawProfilingData().entries.toMutableList()
        val sum = entries.asSequence().fold(0L) { acc, e -> acc + (e.value.dur/1000000) }
        var toReport = (sum * 0.98).toLong()
        // sort in-pace descending
        Collections.sort(entries) { e1, e2 -> if (e2.value.dur < e1.value.dur) -1 else 1 }
        return entries.asSequence().takeWhile { e -> toReport > 0 && e.value.dur / 1000000 > 0}.map { e ->
            val millis= e.value.dur / 1000000
            toReport -= millis

            val parents = e.value.parents.entries.toMutableList()
            //sort in-place descending
            Collections.sort(parents) { e1, e2 -> e2.value - e1.value }
            val sb = StringBuilder("%1\$Ts.%1\$TLs (%2\$d times)".format(millis, e.value.freq))
            parents.forEach { e -> sb.append("\n    -- ${e.key} (${e.value} times)") }

            e.key.to(sb.toString())
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

    fun mergeDurations(name2durFreq: MutableMap<String, DurFreq>) {
        children.forEach { ch ->
            val durFreq = name2durFreq.getOrPut(ch.name) { DurFreq() }
            ch.ownDuration()?.let { dur -> durFreq.dur += dur }
            durFreq.freq += 1
            durFreq.parents.set(name, 1 + durFreq.parents.getOrElse(name) {0})
        }
        for (c in children) {
            c.mergeDurations(name2durFreq)
        }
    }

}

class DurFreq {
    var dur: Long = 0L
    var freq: Int = 0
    val parents: MutableMap<String, Int> = HashMap()
}

inline fun Profiler?.profile(name: String, proc: () -> Unit): Unit {
    val tok = this?.start(name)
    try {
        proc()
    }
    finally {
        this?.end(tok)
    }
}

inline fun <R> Profiler?.profile(name: String, function: () -> R): R {
    val tok = this?.start(name)
    try {
        return function()
    }
    finally {
        this?.end(tok)
    }
}

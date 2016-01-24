package jetbrains.mps.logic.reactor.core

import com.github.andrewoma.dexx.collection.ConsList

/**
 * @author Fedor Isakov
 */


fun <E> emptyConsList(): ConsList<E> = ConsList.empty()

fun <E> cons(e: E): ConsList<E> = emptyConsList<E>().append(e)

fun <E> consListOf(vararg args: E): ConsList<E> {
    val builder = ConsList.factory<E>().newBuilder()
    for (e in args) {
        builder.add(e)
    }
    return builder.build()
}

fun <E> ConsList<E>.removeAt(idx: Int): ConsList<E> {
    if (idx < 0) throw IllegalArgumentException("index < 0")
    val left = this.take(idx)
    var right = this.drop(idx + 1)
    for (e in left.reversed()) {
        right = right.prepend(e)
    }
    return right
}

fun <E> ConsList<E>?.remove(e: E): ConsList<E>? {
    return this?.run {
        val idx = indexOf(e)
        if (idx >= 0) removeAt(idx) else this
    }
}
import jetbrains.mps.logic.reactor.core.LogicalObserver
import jetbrains.mps.logic.reactor.logical.Logical
import org.junit.Test

/*
 * Copyright 2014-2019 JetBrains s.r.o.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/**
 * @author Fedor Isakov
 */

class TestLogical {

    class Observer(logical: Logical<*>) : LogicalObserver {

        var parentUpdated: Pair<Logical<*>, Logical<*>>? = null
        var valueUpdated: Pair<Logical<*>, Any>? = null

        init {
            logical.addObserver(this)
        }

        override fun valueUpdated(logical: Logical<*>) {
            if (valueUpdated != null)
                throw IllegalStateException("value already assigned")
            else
                valueUpdated = logical to logical.findRoot().value()
        }

        override fun parentUpdated(logical: Logical<*>) {
            parentUpdated = logical to logical.findRoot()
        }
    }

    @Test
    fun union_notifies_observers() {
        val xLogical = logical<String>("X")
        val yLogical = logical<String>("Y")
        val zLogical = logical<String>("Z")

        val observerX = Observer(xLogical)
        val observerY = Observer(yLogical)
        val observerZ = Observer(zLogical)

        // the logical on the left has higher rank
        yLogical.union(xLogical)
        observerX.parentUpdated shouldBe (xLogical to yLogical)
        observerY.parentUpdated shouldBe (null)

        // now logical on the right has higher rank
        zLogical.union(xLogical)
        observerZ.parentUpdated shouldBe (zLogical to yLogical)
        observerY.parentUpdated shouldBe (null)

        // should not fail
        yLogical.union(zLogical)
    }

    @Test
    fun assigned_logical_has_higher_rank() {
        val xLogical = logical<String>("X")
        val yLogical = logical<String>("Y")
        val observerX = Observer(xLogical)
        val observerY = Observer(yLogical)

        xLogical.union(yLogical)
        observerY.parentUpdated shouldBe (yLogical to xLogical)
        observerX.parentUpdated shouldBe (null)
        yLogical.findRoot() shouldBeSame xLogical

        yLogical.findRoot().setValue("foobar")
        observerX.valueUpdated shouldBe (xLogical to "foobar")
        observerY.valueUpdated shouldBe (yLogical to "foobar")

        val zLogical = logical<String>("Z")
        val wLogical = logical<String>("W")
        val observerZ = Observer(zLogical)
        val observerW = Observer(wLogical)

        zLogical.union(wLogical)
        observerW.parentUpdated shouldBe (wLogical to zLogical)
        observerZ.parentUpdated shouldBe (null)

        zLogical.union(yLogical)
        zLogical.findRoot() shouldBeSame xLogical
        observerZ.parentUpdated shouldBe (zLogical to xLogical)
        observerW.parentUpdated shouldBe (wLogical to xLogical)
        observerZ.valueUpdated shouldBe (zLogical to "foobar")
        observerW.valueUpdated shouldBe (wLogical to "foobar")
    }
}
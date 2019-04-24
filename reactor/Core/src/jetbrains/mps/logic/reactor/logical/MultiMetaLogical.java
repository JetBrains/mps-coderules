/*
 * Copyright 2014-2017 JetBrains s.r.o.
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

package jetbrains.mps.logic.reactor.logical;


import java.util.ArrayList;
import java.util.List;

/**
 * A declaration of a logical variable with index.
 *
 * @param <T> the value type
 *
 * @author Fedor Isakov
 */
public class MultiMetaLogical<T> extends MetaLogical<T> {

    private int cardinality;
    private List<MetaLogical<T>> metaLogicals = new ArrayList<MetaLogical<T>>();

    public MultiMetaLogical(String name, Class<T> type, int cardinality) {
        super(name, type);
        this.cardinality = cardinality;
        init();
    }

    public int cardinality() {
        return cardinality;
    }

    public MetaLogical<T> logicalAt(int idx) {
        return metaLogicals.get(idx);
    }

    public MetaLogical[] toArray() {
        MetaLogical[] array = new MetaLogical[cardinality];
        return metaLogicals.toArray(array);
    }

    private void init() {
        for (int i = 0; i < cardinality; i++) {
            metaLogicals.add(new MetaLogical<T>(name() + "_" + (i + 1), type()));
        }
    }
}

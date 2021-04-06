//
// MIT License
//
// Copyright (c) 2020 micheltlutz
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.
//

import Foundation

/**
   Class for description list

    ### Usage Example: ###
    ````
     let dl = DL()
     dl.add("Description list item 1")
     let dd = DD("Description list item 1.1")
     dl.add(dd)
    ````
*/
public final class DL: UL {
    ///Override tag element for input elements. Default is `dl`
    override var tag: String {
        get {
            return "dl"
        }
    }
    ///This method append a new element in objects list
    /// - Parameter element: Generic Type `ElementProtocol` or `String`
    public override func add<T>(_ element: T) {
        if element is DT, element is DD {
            guard let genericElement = element as? ElementProtocol else { return }

            objects.append(genericElement)
        } else {
            objects.append(DT(element))
        }
    }
}

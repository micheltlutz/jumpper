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
   Fieldset tag element class

    ### Usage Example: ###
    ````
     let fieldset = Fieldset()

     let labelName = Label("Name")
     labelName.addAttribute(("for", "nameField"))
     fieldset.add(labelName)

     let inputName = InputText("", id: "nameField", placeholder: "Name")
     fieldset.add(inputName)
     
     let labelAge = Label("Age Range")
     labelAge.addAttribute(("for", "ageRangeField"))
     fieldset.add(labelAge)
    ````
*/
final class Fieldset: GenericElement {
    ///Override tag element for element. Default is `fieldset`
    override var tag: String {
        get {
            return "fieldset"
        }
    }
    ///Override container element defaults is `true`
    override var container: Bool {
        get {
            return true
        }
    }

    ///This method append a new element in objects list
    /// - Parameter element: `ElementProtocol`
    public func add(_ element: ElementProtocol) {
        objects.append(element)
    }
}

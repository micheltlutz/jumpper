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
   This class define a Textarea element

    ### Usage Example: ###
    ````
    let script = Script()
    textArea.add("var myJsVar = 1")

    let script = Script(("src","myScript.js"))
    ````
*/
public final class Script: GenericElement {
    ///Override tag element for option. Default is `script`
    override var tag: String {
        get {
            return "script"
        }
    }
    ///Override container element for table row elements defaults is `true`
    override var container: Bool {
        get {
            return true
        }
    }
    /// This method add a text in textarea element
    /// - Parameters:
    ///     - text: This is a content for tag  **text** `String`
    public func add(_ text: String) {
        objects.append(Text(text))
    }
}

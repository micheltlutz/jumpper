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

/// This is a Base class for Input Elements
public class InputElementBase: GenericElement {
    ///Override tag element for input elements. Default is `input`
    override var tag: String {
        get {
            return "input"
        }
    }
    ///Override formElement info input elements are form element for default is `true`
    override var formElement: Bool {
        get {
            return true
        }
    }
    // MARK: - Initialization
    /// Default initializer input element
    /// - Parameters:
    ///     - value: This is a value for input **value** `String`
    ///     - type: This is a type for input **type** `String`
    public init(_ value: String, type: String) {
        super.init()

        self.addAttribute(("value", value))
        self.addAttribute(("type", type))
    }
}

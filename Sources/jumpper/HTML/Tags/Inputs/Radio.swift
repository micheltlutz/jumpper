//
// MIT License
//
// Copyright (c) 2022 micheltlutz
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
 Class define a input type text

 ### Usage Example: ###
 ````
 Radio("value", id: "nameField", name: "Name")
 ````
 */
public final class Radio: InputElementBase {
    // MARK: - Initialization
    /// Default initializer input radio element
    /// - Parameters:
    ///     - value: This is a value for radio **value** `String`
    ///     - id: This is a id for radio **id** `String?`
    ///     - name: This is a name for name **name** `String?`
    public init(_ value: String, id: String?, name: String?) {
        super.init(value, type: "radio")

        if let id = id {
            addAttribute(("id", id))
        }

        if let name = name {
            addAttribute(("name", name))
        }
    }
}

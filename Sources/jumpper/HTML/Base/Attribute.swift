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

/// AttributeType is a Tuple (String, String?)
public typealias AttributeType = (String, String?)

/// This class is responsible for managing attributes of HTML elements
public final class Attribute {
    /// Contains a array of AttributeType
    private var attributes: [AttributeType] = []
    // MARK: - Initialization
    /// Init with array of AttributeType
    /// - Parameter: **attributes** `[AttributeType]`
    public init(_ attributes: [AttributeType]){
        self.attributes = attributes
    }

    // MARK: - Functions

    /// This method add a new single attribute
    /// - Parameter: **attr** `AttributeType`
    public func add(_ attr: AttributeType){
        attributes.append(attr)
    }
    /// This function return all attribures
    /// - Returns: [AttributeType]
    public func getAll() -> [AttributeType] {
        return attributes
    }
    /// This method return a `String` with all attributes
    /// - Returns: `String` all attributes
    public func getString() -> String {
        var attrs: String = ""

        attributes.forEach { (attr, value) in
            if let value = value {
                attrs += " " + attr + "='" + value + "'"
            } else {
                attrs += " " + attr
            }
        }

        return attrs
    }
    /// This method print all attributes
    public func generate() {
        print(getString())
    }
}

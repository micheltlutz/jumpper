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

public class GenericElement: Element {
    public var attributes: [AttributeType] = []
    private(set) var tag: String = ""
    private(set) var container: Bool = false
    private(set) var formElement: Bool = false
    public var objects: [Element] = [Element]()

    public init(_ attributes: AttributeType...){
        self.attributes = attributes
    }

    public init(_ attributes: [AttributeType]){
        self.attributes = attributes
    }

    public func addAttribute(_ attr: AttributeType) {
        attributes.append(attr)
    }

    func openTag() -> String {
        let attr = Attribute(attributes)

        return "<\(tag)\(attr.generate())>"
    }

    func closeTag() -> String {
        return "</"+tag+">"
    }

    public func getString() -> String {
        var code = openTag()

        if objects.count > 0 {
            for obj in objects {
                code += obj.getString()
            }
        }
        code += closeTag()
        return code
    }

    public func generate() {
        print(openTag())
        if objects.count > 0 {
            for obj in objects {
                obj.generate()
            }
        }
        print(closeTag())
    }
}

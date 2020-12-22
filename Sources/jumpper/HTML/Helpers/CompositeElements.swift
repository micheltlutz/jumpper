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

public final class CompositeElements: ElementProtocol {
    public var objects: [ElementProtocol] = [ElementProtocol]()

    ///This method append a new element in objects list
    /// - Parameter element: Generic Type `ElementProtocol` or `String`
    public func add<T>(_ element: T) {
        if let textElement = element as? String {
            let text = FactoryElements.textWith(textElement)

            objects.append(text)
        } else {
            guard let genericElement = element as? ElementProtocol else { return }

            objects.append(genericElement)
        }
    }

    /// This method return tag and all elements
    /// - Returns: `String` tag and all elements
    public func getString() -> String {
        var code = ""
        if objects.count > 0 {
            for obj in objects {
                code.append(obj.getString())
            }
        }

        return code
    }

    /// This method print tag and all elements
    public func generate() {
        if objects.count > 0 {
            for obj in objects {
                obj.generate()
            }
        }
    }
}

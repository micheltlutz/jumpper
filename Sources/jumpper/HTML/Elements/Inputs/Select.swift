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

public typealias SelectOptionsType = [[String: CustomStringConvertible]]

class Select: GenericElement {
    override var tag: String {
        get {
            return "select"
        }
    }

    override var container: Bool {
        get {
            return true
        }
    }
    public private (set) var options: SelectOptionsType = []

    public init(_ options: SelectOptionsType, attr: AttributeType) {
        super.init(attr)

        self.options = options

        self.makeOptions()
    }

    private func makeOptions() {
        options.forEach { (optionDic) in
            optionDic.forEach { (kvArg) in
                let (key, value) = kvArg
                let option = Option(key, text: value)
                objects.append(option)
            }
        }
    }
}

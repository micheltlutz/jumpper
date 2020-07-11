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

///Define a `typealias` for SelectOptionsType
public typealias SelectOptionsType = [[String: CustomStringConvertible]]

///This class define a select element
public final class Select: GenericElement {
    ///Override tag element for option. Default is `option`
    override var tag: String {
        get {
            return "select"
        }
    }
    ///Override container element for table row elements defaults is `true`
    override var container: Bool {
        get {
            return true
        }
    }
    ///List with array of `SelectOptionsType` default is []
    public private (set) var options: SelectOptionsType = []

    // MARK: - Initialization
    /// Default initializer input select element
    /// - Parameters:
    ///     - options: This is a options for select **options** `SelectOptionsType`
    ///     - attributes: This is a attr for select **attributes** `AttributeType...` CVarArg
    public init(_ options: SelectOptionsType, attributes: AttributeType...) {
        super.init(attributes)

        self.options = options

        self.makeOptions()
    }

    // MARK: - Functions
    ///This method iterates over the list of options and creates the option element for each of the items
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

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
    link tag element class

    ### Usage Example: ###
    ````
    let linkTag = Link("/styles/milligram.min.css", attributes: ("rel", "stylesheet"))
    ````
*/
public class Link: GenericElement {
    ///Override tag element for element. Default is `link`
    override var tag: String {
        return "link"
    }

    // MARK: - Initialization
    /// Default initializer element
    /// - Parameters:
    ///     - href: This is a src attribute for link **href** `String`
    ///     - attributes: This is a attr **attributes** `AttributeType...` CVarArg
    public init(_ href: String, attributes: AttributeType...) {
        super.init(attributes)

        addAttribute(("href", href))
    }
}

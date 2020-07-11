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

/// Table html tag class element
public final class Table: GenericElement {
    ///Object with table body. tr, td: `TBody`
    private let tbody: TBody = TBody()
    ///Object with table head. th, td: THead? is optional
    private var thead: THead?
    ///List of rows a array of `Tr`tag element
    private var rows: [Tr] = []

    ///Override tag element for element. Default is `table`
    override var tag: String {
        get {
            return "table"
        }
    }
    ///Override container element defaults is `true`
    override var container: Bool {
        get {
            return true
        }
    }
    // MARK: - Functions
    ///This method append a new eow element in row objects list
    /// - Parameters:
    ///     - titles: Array with titles `[String]`
    ///     - aligns: optional array with aligns `[String]?`
    ///     - class: optional array with css `class` `[String]?`
    public func tableHeaders(titles: [String], aligns: [String]? = nil, `class`: [String]? = nil) {
        thead = THead()

        for (index, title) in titles.enumerated() {
            let th = Th()
            th.add(title)

            if let aligns = aligns {
                let align = aligns[index]
                th.addAttribute(("align", align))
            }

            if let `class` = `class` {
                let classItem = `class`[index]
                th.addAttribute(("class", classItem))
            }
            thead?.add(th)
        }
    }

    ///This method append a new eow element in row objects list
    /// - Parameters:
    ///     - element: Generic Type `ElementProtocol` or `String`
    ///     - attributes: This is a attr for select **attributes** `AttributeType...` CVarArg
    /// Returns: `Td` a item to customize
    @discardableResult
    public func addRow(_ attributes: AttributeType...) -> Tr {
        let tr = Tr(attributes)

        rows.append(tr)
        return tr
    }

    ///This method append a new collumn element in row objects list
    /// - **Attention** it is mandatory to create a row to add a column to it !!
    /// - Parameters:
    ///     - element: Generic Type `ElementProtocol` or `String`
    ///     - attributes: This is a attr for select **attributes** `AttributeType...` CVarArg
    /// Returns: `Td` a item to customize
    @discardableResult
    public func addInRow<T>(_ element: T, attributes: AttributeType...) -> Td {
        let td = Td(attributes)

        td.add(element)

        guard let lastRow = rows.last else {
            fatalError("‼️ [Wrong usage for addInRow] Use addRow first to create a new row")
        }

        lastRow.add(td)
        return td
    }

    /// Override method return tag and all elements
    /// - Returns: `String` tag and all table elements
    public override func getString() -> String {
        var code = openTag()
        if let thead = thead {
            code += thead.getString()
        }

        rows.forEach { (row) in
            tbody.add(row)
        }

        code += tbody.getString()
        code += closeTag()
        return code
    }

    ///Override generate methot do print elements
    public override func generate() {
        print(getString())
    }
}

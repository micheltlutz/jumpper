//
//  ContainerElementBase.swift
//  
//
//  Created by Michel Anderson Lutz Teixeira on 10/07/20.
//

import Foundation

/// Define a base class to containered tag elements
public class ContainerElementBase: GenericElement {
    ///Override container element defaults is `true`
    override var container: Bool {
        get {
            return true
        }
    }
    ///This method append a new element in objects list
    /// - Parameter element: Generic Type `ElementProtocol` or `String`
    public func add<T>(_ element: T) {
        if let textElement = element as? String {
            let text = factoryTextWith(textElement)

            objects.append(text)
        } else {
            guard let genericElement = element as? ElementProtocol else { return }

            objects.append(genericElement)
        }
    }
    /// This method create a `Text` element to user when element T String is passed on add method
    /// - Parameter text: `String` to create `Text` element
    /// - Returns: `Text` Element with string passed
    private func factoryTextWith(_ text: String) -> Text {
        return Text(text)
    }
}

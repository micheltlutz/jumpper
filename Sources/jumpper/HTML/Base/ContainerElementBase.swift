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
            let text = FactoryElements.textWith(textElement)

            objects.append(text)
        } else {
            guard let genericElement = element as? ElementProtocol else { return }

            objects.append(genericElement)
        }
    }
}

//
//  File.swift
//
//
//  Created by DarkBringer on 17.10.2021.
//

import Foundation

public protocol GenericValueProtocol {
    associatedtype Value
    var value: Value { get }
}

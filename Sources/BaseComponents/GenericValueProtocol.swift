#if canImport(UIKit)


import Foundation

public protocol GenericValueProtocol {
    associatedtype Value
    var value: Value { get }
}
#endif

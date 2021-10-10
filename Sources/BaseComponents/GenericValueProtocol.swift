#if canImport(UIKit)


import Foundation

protocol GenericValueProtocol {
    associatedtype Value
    var value: Value { get }
}
#endif

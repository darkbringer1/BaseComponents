#if canImport(UIKit)


import Foundation
import UIKit

open class GenericBaseView<T>: BaseView, GenericBaseViewProtocols {
    
    
    private var data: T?
    
    init(frame: CGRect = .zero, data: T? = nil) {
        self.data = data
        super.init(frame: frame)
        loadDataView()
    }
    
    required public init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    open func loadDataView() {
        
    }
    
//    func setData(by value: T?) {
//        self.data = value
//        loadDataView()
//    }
//
//    func returnData() -> T? {
//        return data
//    }
    
    open func setData(by value: T?) {
        self.data = value
        loadDataView()
    }
    
    open func returnData() -> T? {
        return data
    }
    
    
}
#endif

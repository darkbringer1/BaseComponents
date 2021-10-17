#if canImport(UIKit)
import UIKit
#endif
import Foundation

open class GenericBaseView<T>: BaseView {
    
    private var data: T?
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        loadDataView()
    }
    
    public init(frame: CGRect = .zero, data: T? = nil) {
        self.data = data
        super.init(frame: frame)
        loadDataView()
    }
    
    required public init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    open func loadDataView() { }
    
    open func setData(by value: T?) {
        self.data = value
        loadDataView()
    }
    
    open func returnData() -> T? {
        return data
    }
    
}

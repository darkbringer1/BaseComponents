#if canImport(UIKit)


import Foundation
import UIKit

open class GenericBaseView<T>: BaseView {
    
    private var data: T?
    
    init(frame: CGRect = .zero, data: T? = nil) {
        self.data = data
        super.init(frame: frame)
        loadDataView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func loadDataView() {
        
    }
    
    func setData(by value: T?) {
        self.data = value
        loadDataView()
    }
    
    func returnData() -> T? {
        return data
    }
    
    
}
#endif

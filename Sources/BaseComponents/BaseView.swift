#if canImport(UIKit)

import UIKit

open class BaseView: UIView, BaseViewProtocols {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addMajorViewComponents()
        setupViewConfigurations()
    }
    
    required public init?(coder: NSCoder) {
        super.init(coder: coder)
        addMajorViewComponents()
        setupViewConfigurations()
    }
    
    open func addMajorViewComponents() { }
    open func setupViewConfigurations() { }
    
}
#endif

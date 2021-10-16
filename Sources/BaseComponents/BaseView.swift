#if canImport(UIKit)
import UIKit
#endif
open class BaseView: UIView {
    
    public override init(frame: CGRect) {
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

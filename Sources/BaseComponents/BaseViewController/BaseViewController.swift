#if canImport(UIKit)

import UIKit

open class BaseViewController<V>: UIViewController, BaseViewControllerProtocols {
    
    public var viewModel: V!
    
    convenience init(viewModel: V) {
        self.init()
        self.viewModel = viewModel
    }
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        prepareViewControllerConfigurations()
    }
    
    open func prepareViewControllerConfigurations() { }
    
}

#endif

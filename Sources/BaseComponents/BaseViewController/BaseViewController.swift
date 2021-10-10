#if canImport(UIKit)

import UIKit

open class BaseViewController<V>: UIViewController, BaseViewControllerProtocols {
    
    var viewModel: V!
    
    open convenience init(viewModel: V) {
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

#if canImport(UIKit)

import UIKit

open class BaseViewController<V>: UIViewController, BaseViewControllerProtocols {
    
    open var viewModel = ViewModel.init(viewModel: V)
    
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

// trying viewModel var above to be accessible from outside
struct ViewModel<V> {
    
    public var viewModel: V?
    
}
#endif

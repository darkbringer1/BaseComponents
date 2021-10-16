#if canImport(UIKit)
import UIKit
#endif
open class BaseViewController<V>: UIViewController {
    
    public var viewModel: V!
    
    public convenience init(viewModel: V) {
        self.init()
        self.viewModel = viewModel
    }
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        prepareViewControllerConfigurations()
    }
    
    open func prepareViewControllerConfigurations() { }
    
}

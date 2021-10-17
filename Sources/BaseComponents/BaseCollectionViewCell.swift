#if canImport(UIKit)
import UIKit
#endif

open class BaseCollectionViewCell: UICollectionViewCell {
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        addMajorViews()
        setupView()
    }
    
    required public init?(coder: NSCoder) {
        super.init(coder: coder)
        addMajorViews()
        setupView()
    }
    
    open func setupView() {}
    open func addMajorViews() {}
    
    public static var identifier: String {
        return String(describing: self)
    }
}



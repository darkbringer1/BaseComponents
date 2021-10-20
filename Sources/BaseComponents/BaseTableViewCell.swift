#if canImport(UIKit)
import UIKit
#endif

open class BaseTableViewCell: UITableViewCell {
    
    public override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
        addMajorView()
        
    }
    
    required public init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
        addMajorView()
    }
    
    open func setupView() { }
    open func addMajorView() { }
    
    static var identifier: String {
        return String(describing: self)
    }
    
}


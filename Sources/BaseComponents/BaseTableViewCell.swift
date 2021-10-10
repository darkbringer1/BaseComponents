#if canImport(UIKit)


import UIKit

open class BaseTableViewCell: UITableViewCell, BaseTableViewCellProtocols {
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
        addMajorView()
        
    }
    
    required public init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
        addMajorView()
    }
    
    public func setupView() { }
    public func addMajorView() { }
    
    static var identifier: String {
        return String(describing: self)
    }
    
}
#endif

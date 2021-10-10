#if canImport(UIKit)


import UIKit

open class BaseTableViewCell: UITableViewCell {
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
        addMajorView()
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
        addMajorView()
    }
    
    func setupView() { }
    func addMajorView() { }
    
    static var identifier: String {
        return String(describing: self)
    }
    
}
#endif

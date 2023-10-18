//
//  File.swift
//  
//
//  Created by Doğukaan Kılıçarslan on 8.10.2023.
//

#if canImport(UIKit)
import UIKit
#endif

open class BaseTableViewHeaderFooterView: UITableViewHeaderFooterView {
    public override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        setupView()
        addViewComponents()
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
        addViewComponents()
    }
    
    open func setupView() {}
    open func addViewComponents() {}
    
    static public var identifier: String {
        return String(describing: self)
    }
}

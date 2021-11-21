//
//  File.swift
//
//
//  Created by DarkBringer on 10.10.2021.
//

#if canImport(UIKit)
import UIKit
#endif

open class BaseTableViewCell: UITableViewCell {
    
    public override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
        addMajorView()
        
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
        addMajorView()
    }
    
    open func setupView() { }
    open func addMajorView() { }
    
    static public var identifier: String {
        return String(describing: self)
    }
    
}


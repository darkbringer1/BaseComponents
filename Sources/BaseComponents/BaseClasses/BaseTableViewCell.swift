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

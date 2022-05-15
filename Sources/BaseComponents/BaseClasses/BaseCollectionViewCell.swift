//
//  File.swift
//
//
//  Created by DarkBringer on 17.10.2021.
//

#if canImport(UIKit)
import UIKit
#endif

open class BaseCollectionViewCell: UICollectionViewCell {
    public override init(frame: CGRect) {
        super.init(frame: frame)
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

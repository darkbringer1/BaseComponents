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
        addMajorViews()
        setupView()
    }
    
    public required init?(coder: NSCoder) {
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



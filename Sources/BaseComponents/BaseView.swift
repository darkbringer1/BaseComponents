//
//  File.swift
//
//
//  Created by DarkBringer on 17.10.2021.
//

#if canImport(UIKit)
import UIKit
#endif
open class BaseView: UIView {
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        addMajorViewComponents()
        setupViewConfigurations()
    }
    
    required public init?(coder: NSCoder) {
        super.init(coder: coder)
        addMajorViewComponents()
        setupViewConfigurations()
    }
    
    open func addMajorViewComponents() { }
    open func setupViewConfigurations() { }
    
}

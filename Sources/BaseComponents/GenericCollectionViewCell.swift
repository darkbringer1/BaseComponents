//
//  File.swift
//
//
//  Created by DarkBringer on 17.10.2021.
//

#if canImport(UIKit)
import UIKit
#endif

open class GenericCollectionViewCell<DataType, ViewType: GenericBaseView<DataType>>: BaseCollectionViewCell {
    
    open lazy var genericView: ViewType = {
        let temp = ViewType()
        temp.translatesAutoresizingMaskIntoConstraints = false
        return temp
    }()
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        //added major view add method
        addMajorViews()
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    open override func addMajorViews() {
        super.addMajorViews()
        
        contentView.addSubview(genericView)
        
        NSLayoutConstraint.activate([
        
            genericView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            genericView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            genericView.topAnchor.constraint(equalTo: contentView.topAnchor),
            genericView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
        
        
        ])
    }
    
    open func setRowData(data: DataType) {
        genericView.setData(by: data)
    }
    
}


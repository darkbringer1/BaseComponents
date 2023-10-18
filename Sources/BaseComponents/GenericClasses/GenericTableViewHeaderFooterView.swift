//
//  File.swift
//  
//
//  Created by Doğukaan Kılıçarslan on 8.10.2023.
//

#if canImport(UIKit)
import UIKit
#endif

open class GenericTableViewHeaderFooterViewCell<DataType, ViewType: GenericBaseView<DataType>>: BaseTableViewHeaderFooterView {
    open lazy var genericView: ViewType = {
        let temp = ViewType()
        temp.translatesAutoresizingMaskIntoConstraints = false
        return temp
    }()
    
    public override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        addViewComponents()
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    open override func addViewComponents() {
        super.addViewComponents()
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

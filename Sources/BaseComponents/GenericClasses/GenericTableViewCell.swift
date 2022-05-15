//
//  File.swift
//  
//
//  Created by Dogukaan Kılıçarslan on 15.05.2022.
//

#if canImport(UIKit)
import UIKit
#endif

open class GenericTableViewCell<DataType, ViewType: GenericBaseView<DataType>>: BaseTableViewCell {
    open lazy var genericView: ViewType = {
        let temp = ViewType()
        temp.translatesAutoresizingMaskIntoConstraints = false
        return temp
    }()

    public override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
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

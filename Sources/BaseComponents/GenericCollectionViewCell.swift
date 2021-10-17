#if canImport(UIKit)
import UIKit
#endif

open class GenericCollectionViewCell<DataType, ViewType: GenericBaseView<DataType>>: BaseCollectionViewCell {
    
    open lazy var genericView: ViewType = {
        let temp = ViewType()
        temp.translatesAutoresizingMaskIntoConstraints = false
        return temp
    }()
    
    required public init?(coder: NSCoder) {
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


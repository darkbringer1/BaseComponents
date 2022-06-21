//
//  File.swift
//  
//
//  Created by Dogukaan Kılıçarslan on 21.06.2022.
//

#if canImport(UIKit)
import UIKit
#endif

open class GenericXibView<T>: BaseView {
    private var data: T?

    public override init(frame: CGRect) {
        super.init(frame: frame)
        loadDataView()
    }

    public init(frame: CGRect, data: T? = nil) {
        self.data = data
        super.init(frame: frame)
        commonInit()
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    open func commonInit() {
        guard let view = loadViewFromNib() else { return }
        view.frame = bounds
        addSubview(view)
        loadDataView()
    }

    private func loadViewFromNib() -> UIView? {
        let identifier = String(describing: type(of: self))
        let nib = UINib(nibName: identifier, bundle: nil)
        return nib.instantiate(withOwner: self, options: nil).first as? UIView
    }

    open func loadDataView() { }

    open func setData(by value: T?) {
        self.data = value
        loadDataView()
    }

    open func getData() -> T? {
        return data
    }
}

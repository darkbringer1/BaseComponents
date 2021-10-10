//
//  File.swift
//  
//
//  Created by DarkBringer on 10.10.2021.
//

import Foundation

public protocol GenericBaseViewProtocols {
    
    associatedtype T
    
    func loadDataView()
    
    func setData(by value: T?)
    
    func returnData() -> T?
    
}

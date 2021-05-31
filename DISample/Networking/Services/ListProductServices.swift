//
//  ListProductServices.swift
//  DISample
//
//  Created by NguyenHoang on 5/30/21.
//

import Foundation

protocol ListProductProtocol {
    func fetchListProduct(completion: @escaping ([ProductModel]) -> Void)
}
struct ListProductServices: ListProductProtocol {
    func fetchListProduct(completion: @escaping ([ProductModel]) -> Void) {
        let mockProduct = [ProductModel(name: "apple", cost: 1),
                            ProductModel(name: "Samsung", cost: 2.0)]
        completion(mockProduct)
    }
}

//
//  ListProductViewModel.swift
//  DISample
//
//  Created by NguyenHoang on 5/30/21.
//

import Foundation

protocol ListProductViewModel {
    func fetchListProduct()
}

struct ListProductViewModelImpl: ListProductViewModel {

    private var listProductServices:ListProductServices
//    private var authenServices: AuthenticationServices
    
//    init(productServices: ListProductServices,authenServices: AuthenticationServices) {
//        self.listProductServices = productServices
//        self.authenServices = authenServices
//    }
    init(productServices: ListProductServices) {
        self.listProductServices = productServices
    }
    func fetchListProduct() {
        self.listProductServices.fetchListProduct { result in
            // Todo
        }
    }
//    func getAccountDetail() {
//        self.authenServices.getAccountDetail(userId: "")
//    }

}

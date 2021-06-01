//
//  DIContainerManagerment.swift
//  DISample
//
//  Created by NguyenHoang on 5/30/21.
//

import Foundation
import LoginFramwork
import ProductFramework

class DIManagement {
    
    static let productServices = ListProductServices()
    static let autheticationServices = AuthenticationServices()
}

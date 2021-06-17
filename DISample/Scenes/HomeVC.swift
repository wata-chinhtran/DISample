//
//  HomeVC.swift
//  DISample
//
//  Created by NguyenHoang on 6/1/21.
//

import UIKit
import DINetworking

class HomeVC: UIViewController {
    
    @IBOutlet weak var txUserName: UITextField!
    @IBOutlet weak var txPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
   }
    
    @IBAction func viewAction(_ sender: Any) {
        
        let networkManagement = NetworkManager.instance
        networkManagement.doLogin { (results) in
            var info = UserInfo()
            info.token = "xxxxxxx"
            NetworkManager.instance.setToken(token: info.token)
        }
        
//
//        let loginVC = LoginViewVC.instance()
//        loginVC.delegate = self
//        loginVC.viewModel = LoginViewModelImpl(authenServices: DIManagement.autheticationServices)
//        self.present(loginVC, animated: true, completion: nil)
//
    }
    
    private func showListProduct() {
        
//        let productVC = ListProductVC()
//        productVC.viewModel = ListProductViewModelImpl(token: AppSharing.instance.tokenApp, productServices: DIManagement.productServices)
//        self.present(productVC, animated: true, completion: nil)
        
    }
}
//extension HomeVC: LoginDelegate {
//    func loginCallBack(token: String) {
//        // handle call back login success
//        AppSharing.instance.tokenApp = token
//        self.showListProduct()
//    }
//}

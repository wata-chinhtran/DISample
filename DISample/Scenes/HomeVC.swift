//
//  HomeVC.swift
//  DISample
//
//  Created by NguyenHoang on 6/1/21.
//

import UIKit
import DINetworking
import ProductFramework
import ClientFramework

class HomeVC: UIViewController {
    
    @IBOutlet weak var txUserName: UITextField!
    @IBOutlet weak var txPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
   }
    
    @IBAction func viewAction(_ sender: Any) {
        
        let networkManagement = NetworkManager.instance
        networkManagement.setBaseUrl(baseUrl: "https://google.com")
        networkManagement.doLogin { (results) in
            var info = UserInfo()
            info.token = "xxxxxxx"
            NetworkManager.instance.setToken(token: info.token)
            self.showClientList()
       }
        
    }
    private func showClientList(){
        
        let loginVC = ClientViewVC()
        loginVC.delegate = self
        loginVC.viewModel = ClientViewModelImpl(authenServices: DIManagement.autheticationServices)
        self.present(loginVC, animated: true, completion: nil)
    }
    
    private func showListProduct() {
        
        let productVC = ListProductVC()
        productVC.viewModel = ListProductViewModelImpl(token: AppSharing.instance.tokenApp, productServices: DIManagement.productServices)
        productVC.modalPresentationStyle = .overFullScreen
        self.showDetailViewController(productVC, sender: true)
    }
}
extension HomeVC: LoginDelegate {
    func loginCallBack(token: String) {
        // handle call back login success
        AppSharing.instance.tokenApp = token
        self.showListProduct()
    }
}

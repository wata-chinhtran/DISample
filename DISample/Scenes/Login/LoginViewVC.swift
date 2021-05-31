//
//  LoginViewVC.swift
//  DISample
//
//  Created by NguyenHoang on 5/30/21.
//

import UIKit

class LoginViewVC: UIViewController {

    var viewModel:LoginViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    @IBAction func doLoginAction(_ sender: Any) {
        viewModel.doLogin(param: LoginParameters(userName: "", password: ""), completion: { result in
            let productVC = ListProductVC()
            productVC.viewModel = ListProductViewModelImpl(productServices: DIManagement.productServices, authenServices: DIManagement.autheticationServices)
            self.navigationController?.showDetailViewController(productVC, sender: false)
        })
    }
    
}

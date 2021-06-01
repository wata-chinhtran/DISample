//
//  HomeVC.swift
//  DISample
//
//  Created by NguyenHoang on 6/1/21.
//

import UIKit
import LoginFramwork

class HomeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let loginVC = LoginViewVC()
        loginVC.viewModel = LoginViewModelImpl(authenServices: DIManagement.autheticationServices)
        loginVC.doLoginAction(userName: "test", password: "test") { token in
            print("token ==", token)
        }
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

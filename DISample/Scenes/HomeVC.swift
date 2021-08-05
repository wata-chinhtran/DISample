//
//  HomeVC.swift
//  DISample
//
//  Created by NguyenHoang on 6/1/21.
//

import UIKit
//import DINetworking

class HomeVC: UIViewController {
    
    @IBOutlet weak var txUserName: UITextField!
    @IBOutlet weak var txPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
   }
    
    private func warningAlert(){
        
        let myalert = UIAlertController(title: "App Info", message: "Please input all field", preferredStyle: UIAlertController.Style.alert)

        myalert.addAction(UIAlertAction(title: "Ok", style: .default) { (action:UIAlertAction!) in
                print("Selected")
            })
        self.present(myalert, animated: true, completion: nil)
    }
    
    @IBAction func viewAction(_ sender: Any) {
        
        guard let userName = self.txUserName.text, !userName.isEmpty else {
            self.warningAlert()
            return
        }
        guard let password = self.txPassword.text, !password.isEmpty else {
            self.warningAlert()
            return
        }
        
//        let networkManagement = NetworkManager.instance
//        networkManagement.setBaseUrl(baseUrl: "https://google.com")
//        networkManagement.doLogin(user: userName, pass: password, completion: { (results) in
//            var info = UserInfo()
//            info.token = "xxxxxxx"
////            should save token for use later
//            AppSharing.instance.tokenApp = info.token
//            self.showDetailVC()
//       })
    }
    private func showDetailVC() {
        let detailVC = ServicesDetailVC()
        self.navigationController?.pushViewController(detailVC, animated: true)
        
    }
   
}

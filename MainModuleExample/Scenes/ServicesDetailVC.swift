//
//  ServicesDetailVC.swift
//  DISample
//
//  Created by NguyenHoang on 6/17/21.
//

import UIKit
import FeatureModule
//import ClientFramework

class ServicesDetailVC: UIViewController {

    @IBOutlet weak var btnProduct: UIButton!
    @IBOutlet weak var btnClient: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func clientActionView(_ sender: Any) {
        
//        let clientVC = ClientViewVC()
//        clientVC.delegate = self
//        clientVC.viewModel = ClientViewModelImpl(authenServices: DIManagement.autheticationServices)
//        clientVC.modalPresentationStyle = .overFullScreen
//        self.showDetailViewController(clientVC, sender: nil)

    }
    @IBAction func productActionView(_ sender: Any) {
        
////        let productVC = ListProductVC()
//        productVC.viewModel = ListProductViewModelImpl(token: AppSharing.instance.tokenApp, productServices: DIManagement.productServices)
//        productVC.delegate = self
//        productVC.modalPresentationStyle = .overFullScreen
//        self.showDetailViewController(FeatureModule.ini, sender: true)
    }
}
//extension ServicesDetailVC: ClientInfoDelegate {
//    func clientCallBack(clientTitle: String) {
//        self.btnClient.setTitle(clientTitle.uppercased(), for: .normal)
//    }
//}


//
//  ListProductVC.swift
//  DISample
//
//  Created by NguyenHoang on 5/30/21.
//

import UIKit

class ListProductVC: UIViewController {

    var viewModel:ListProductViewModel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    private func fetchDate(){
        viewModel.fetchListProduct()
    }
}

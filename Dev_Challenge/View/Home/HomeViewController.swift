//
//  HomeViewController.swift
//  Dev_Challenge
//
//  Created by Hugo Pinheiro  on 16/10/24.
//

import UIKit

class HomeViewController: UIViewController {
    
    let homeview = HomeView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(homeview)

        homeview.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}

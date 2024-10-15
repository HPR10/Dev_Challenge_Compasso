//
//  CreateAccountViewController.swift
//  Dev_Challenge
//
//  Created by Hugo Pinheiro  on 15/10/24.
//

import UIKit
import SnapKit

class CreateAccountViewController: UIViewController {
    
    let createAccountView = CreateAccountView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(createAccountView)
        
        createAccountView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}

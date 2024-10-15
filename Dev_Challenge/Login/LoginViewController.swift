//
//  LoginViewController.swift
//  Dev_Challenge
//
//  Created by Hugo Pinheiro  on 11/10/24.
//

import UIKit
import SnapKit

class LoginViewController: UIViewController {
    
    let loginView = LoginView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(loginView)
        
        loginView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}

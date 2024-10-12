//
//  LoginViewController.swift
//  Dev_Challenge
//
//  Created by Hugo Pinheiro  on 11/10/24.
//

import UIKit
import SnapKit

class LoginViewController: UIViewController {
    
    let emailTextfield = CustomTextField(placeholder: "E-mail")
    let passwordTextfield = CustomTextField(placeholder: "Senha", isSecure: true)
    let loginButton = CustomButton(title: "Login")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        view.addSubview(emailTextfield)
        view.addSubview(passwordTextfield)
        view.addSubview(loginButton)
        
        setupConstraints()
    }
    
    func setupConstraints() {
        emailTextfield.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(100)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.height.equalTo(50)
        }
        
        passwordTextfield.snp.makeConstraints { make in
            make.top.equalTo(emailTextfield.snp.bottom).offset(20)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.height.equalTo(50)
        }
        
        loginButton.snp.makeConstraints {make in
            make.top.equalTo(passwordTextfield.snp.bottom).offset(40)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.height.equalTo(50)
        }
    }
}

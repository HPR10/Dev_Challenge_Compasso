//
//  LoginViewController.swift
//  Dev_Challenge
//
//  Created by Hugo Pinheiro  on 11/10/24.
//

import UIKit
import SnapKit

class LoginViewController: UIViewController {
    
    
    let titleLabel = CustomLabel(text: "Log in", fontSize: 30, fontWeight: .bold)
    let subtitleLabel = CustomLabel(text: "Welcome to My Statement, please fill in the\n fields below to log into your account.", fontSize: 16, textColor: .gray, numberOfLines: 2)
    let emailTextfield = CustomTextField(placeholder: "E-mail")
    let passwordTextfield = CustomTextField(placeholder: "Senha", isSecure: true)
    let loginButton = CustomButton(title: "Login")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        view.addSubview(titleLabel)
        view.addSubview(subtitleLabel)
        view.addSubview(emailTextfield)
        view.addSubview(passwordTextfield)
        view.addSubview(loginButton)
        
        setupConstraints()
    }
    
    func setupConstraints() {
        
        titleLabel.snp.makeConstraints{ make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(40)
            make.centerX.equalToSuperview()
        }
        
        subtitleLabel.snp.makeConstraints{ make in
            make.top.equalTo(titleLabel.snp.bottom).offset(8)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
        }
        
        emailTextfield.snp.makeConstraints { make in
            make.top.equalTo(subtitleLabel.snp.bottom).offset(40)
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

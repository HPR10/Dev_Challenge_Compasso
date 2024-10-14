//
//  LoginView.swift
//  Dev_Challenge
//
//  Created by Hugo Pinheiro  on 12/10/24.
//

import UIKit
import SnapKit

class LoginView: UIView {
    
    let purpleView = CustomBackgroundView(backgroundColor: .purple)
    let imageTitle = CustomImageView(imageName: "Vector", contentMode: .scaleAspectFit)
    
    let titleLabel = CustomLabel(text: "Log in", fontSize: 30, fontWeight: .bold, textColor: .black)
    let subtitleLabel = CustomLabel(text: "Welcome to My Statement, please fill in the\n fields below to log into your account.", fontSize: 16, textColor: .black, numberOfLines: 2, textAlignment: .center)
    
    let emailLabel = CustomLabel(text: "E-mail", isbold: true)
    let emailTextfield = CustomTextField(placeholder: "E-mail", borderColor: .lightGray, borderWidth: 1)
    let PasswordLabel = CustomLabel(text: "Password", isbold: true)
    let passwordTextfield = CustomTextField(placeholder: "Password", isSecure: true, leftIconName: "Group",borderColor: .lightGray, borderWidth: 1)
    
    let loginButton = CustomButton(title: "Log in", backgroundColor: .black, borderColor: .black, borderWidth: 1,isbold: true)
    let orLabel = CustomLabel(text: "or", textColor: .black, isbold: true)
    let createAccountButton = CustomButton(title: "Create account", backgroundColor: .white, borderColor: .lightGray, borderWidth: 1, isbold: true, textColor: .black)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        addSubview(purpleView)
        addSubview(titleLabel)
        addSubview(subtitleLabel)
        addSubview(emailLabel)
        addSubview(emailTextfield)
        addSubview(PasswordLabel)
        addSubview(passwordTextfield)
        addSubview(loginButton)
        addSubview(orLabel)
        addSubview(createAccountButton)
        addSubview(imageTitle)
    }
    
    private func setupConstraints() {
        
        purpleView.snp.makeConstraints{ make in
            make.top.left.right.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.35)
        }
        
        imageTitle.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalTo(purpleView.snp.bottom).offset(-60)
            make.height.equalTo(37)
            make.width.equalTo(250)
        }
        
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(purpleView.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
        }
        
        subtitleLabel.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(20)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
        }
        
        emailLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.bottom.equalTo(emailTextfield.snp.top).offset(-10)
        }
        
        emailTextfield.snp.makeConstraints { make in
            make.top.equalTo(subtitleLabel.snp.bottom).offset(40)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.height.equalTo(50)
        }
        
        PasswordLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.bottom.equalTo(passwordTextfield.snp.top).offset(-10)
        }
        
        passwordTextfield.snp.makeConstraints{ make in
            make.top.equalTo(emailTextfield.snp.bottom).offset(40)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.height.equalTo(50)
        }
        
        
        
        loginButton.snp.makeConstraints { make in
            make.top.equalTo(passwordTextfield.snp.bottom).offset(20)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.height.equalTo(50)
        }
        
        orLabel.snp.makeConstraints {make in
            make.top.equalTo(loginButton.snp.bottom).offset(20)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
        }
        
        createAccountButton.snp.makeConstraints { make in
            make.top.equalTo(orLabel.snp.bottom).offset(20)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.height.equalTo(50)
        }
    }
}



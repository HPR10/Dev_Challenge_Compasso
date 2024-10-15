//
//  WhiteView.swift
//  Dev_Challenge
//
//  Created by Hugo Pinheiro  on 14/10/24.
//

import UIKit

class WhiteView: UIView {
    
    let titleLabel = CustomLabel(text: "Log in", fontSize: 26, fontWeight: .bold, textColor: .black)
    let subtitleLabel = CustomLabel(text: "Welcome to My Statement, please fill in the\n fields below to log into your account.", fontSize: 16, textColor: .black, numberOfLines: 2, textAlignment: .center)
    
    let emailLabel = CustomLabel(text: "E-mail", isbold: true)
    let emailTextfield = CustomTextField(placeholder: "E-mail", borderColor: .lightGray, borderWidth: 1)
    let passwordLabel = CustomLabel(text: "Password", isbold: true)
    let passwordTextfield = CustomTextField(placeholder: "Password", isSecure: true, leftIconName: "Group", borderColor: .lightGray, borderWidth: 1)
    
    let loginButton = CustomButton(title: "Log in", backgroundColor: .black, borderColor: .black, borderWidth: 1, isbold: true)
    let orLabel = CustomLabel(text: "or", textColor: .black, isbold: true)
    let createAccountButton = CustomButton(title: "Create account", backgroundColor: .white, borderColor: .lightGray, borderWidth: 1, isbold: true, textColor: .black)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupConstraints()
        setupAppearance()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        addSubview(titleLabel)
        addSubview(subtitleLabel)
        addSubview(emailLabel)
        addSubview(emailTextfield)
        addSubview(passwordLabel)
        addSubview(passwordTextfield)
        addSubview(loginButton)
        addSubview(orLabel)
        addSubview(createAccountButton)
    }
    
    private func setupConstraints() {
        
        titleLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(20)
            make.centerX.equalToSuperview()
        }
        
        subtitleLabel.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(20)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
        }
        
        emailLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.bottom.equalTo(emailTextfield.snp.top).offset(-20)
        }
        
        emailTextfield.snp.makeConstraints { make in
            make.top.equalTo(subtitleLabel.snp.bottom).offset(60)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.height.equalTo(50)
        }
        
        passwordLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.bottom.equalTo(passwordTextfield.snp.top).offset(-20)
        }
        
        passwordTextfield.snp.makeConstraints { make in
            make.top.equalTo(emailTextfield.snp.bottom).offset(60)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.height.equalTo(50)
        }
        
        loginButton.snp.makeConstraints { make in
            make.top.equalTo(passwordTextfield.snp.bottom).offset(20)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.height.equalTo(55)
        }
        
        orLabel.snp.makeConstraints { make in
            make.top.equalTo(loginButton.snp.bottom).offset(20)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
        }
        
        createAccountButton.snp.makeConstraints { make in
            make.top.equalTo(orLabel.snp.bottom).offset(20)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.height.equalTo(55)
        }
    }
    
    private func setupAppearance() {
        self.backgroundColor = .white
        self.layer.cornerRadius = 20
        self.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        self.layer.masksToBounds = true
    }
}

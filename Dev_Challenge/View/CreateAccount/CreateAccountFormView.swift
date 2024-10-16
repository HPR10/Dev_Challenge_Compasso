//
//  CreateAccountFormView.swift
//  Dev_Challenge
//
//  Created by Hugo Pinheiro  on 15/10/24.
//

import UIKit
import SnapKit


class CreateAccountFormView: UIView {
    
    let createAccountTitleLabel = CustomLabel(text: "Create account", fontSize: 24, textColor: .black, isbold: true)
    let createAccountSubtitleLabel = CustomLabel(text: "Please fill in the fields below to create an\n account.", textColor: .black, numberOfLines: 2, textAlignment: .center)
    let lastNameLabel = CustomLabel(text: "Last Name", isbold: true)
    let firstNameLabel = CustomLabel(text: "First Name", isbold: true)
    let lastNameTextField = CustomTextField(placeholder: "Last name")
    let firstNameTextField = CustomTextField(placeholder: "First name")
    
    let emailLabel = CustomLabel(text: "E-mail", isbold: true)
    let emailTextfield = CustomTextField(placeholder: "E-mail", borderColor: .lightGray, borderWidth: 1)
    let passwordLabel = CustomLabel(text: "Password", isbold: true)
    let passwordTextfield = CustomTextField(placeholder: "Password", isSecure: true, leftIconName: "Group", borderColor: .lightGray, borderWidth: 1)
    
    let confirmpasswordLabel = CustomLabel(text: "Confirm password", isbold: true)
    let confirmpasswordTextfield = CustomTextField(placeholder: "Password", isSecure: true, leftIconName: "Group", borderColor: .lightGray, borderWidth: 1)
    
    let createAccountButton = CustomButton(title: "Create account", backgroundColor: .black)
    
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setupView()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        addSubview(createAccountTitleLabel)
        addSubview(createAccountSubtitleLabel)
        addSubview(lastNameLabel)
        addSubview(firstNameLabel)
        addSubview(lastNameTextField)
        addSubview(firstNameTextField)
        addSubview(emailLabel)
        addSubview(emailTextfield)
        addSubview(passwordLabel)
        addSubview(passwordTextfield)
        addSubview(confirmpasswordLabel)
        addSubview(confirmpasswordTextfield)
        addSubview(createAccountButton)
    }

    private func setupConstraints() {
        createAccountTitleLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(20)
            make.centerX.equalToSuperview()
        }
        
        createAccountSubtitleLabel.snp.makeConstraints { make in
            make.top.equalTo(createAccountTitleLabel.snp.bottom).offset(20)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
        }
        
        lastNameLabel.snp.makeConstraints { make in
            make.top.equalTo(createAccountSubtitleLabel.snp.bottom).offset(20)
            make.left.equalToSuperview().offset(20)
        }
        
        firstNameLabel.snp.makeConstraints { make in
            make.top.equalTo(lastNameLabel)
            make.left.equalTo(lastNameTextField.snp.right).offset(16)
        }
        
        lastNameTextField.snp.makeConstraints { make in
            make.top.equalTo(lastNameLabel.snp.bottom).offset(10)
            make.left.equalToSuperview().offset(20)
            make.width.equalToSuperview().multipliedBy(0.42)
            make.height.equalTo(50)
        }
        
        firstNameTextField.snp.makeConstraints { make in
            make.top.equalTo(lastNameTextField)
            make.left.equalTo(lastNameTextField.snp.right).offset(16)
            make.right.equalToSuperview().offset(-20)
            make.width.equalTo(lastNameTextField)
            make.height.equalTo(50)
        }
        
        emailLabel.snp.makeConstraints { make in
            make.top.equalTo(lastNameTextField.snp.bottom).offset(16)
            make.left.equalToSuperview().offset(20)
            
        }
        
        emailTextfield.snp.makeConstraints { make in
            make.top.equalTo(emailLabel.snp.bottom).offset(16)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.height.equalTo(50)
        }
        
        passwordLabel.snp.makeConstraints { make in
            make.top.equalTo(emailTextfield.snp.bottom).offset(16)
            make.left.equalToSuperview().offset(20)
        }
        
        passwordTextfield.snp.makeConstraints { make in
            make.top.equalTo(passwordLabel.snp.bottom).offset(16)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.height.equalTo(50)
        }
        
        confirmpasswordLabel.snp.makeConstraints { make in
            make.top.equalTo(passwordTextfield.snp.bottom).offset(16)
            make.left.equalToSuperview().offset(20)
        }
        
        confirmpasswordTextfield.snp.makeConstraints { make in
            make.top.equalTo(confirmpasswordLabel.snp.bottom).offset(16)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.height.equalTo(50)
        }
        
        createAccountButton.snp.makeConstraints {make in
            make.top.equalTo(confirmpasswordTextfield.snp.bottom).offset(20)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.height.equalTo(50)
        }
    }
}

//
//  LoginView.swift
//  Dev_Challenge
//
//  Created by Hugo Pinheiro  on 12/10/24.
//

import UIKit
import SnapKit

class LoginView: UIView {
    
    let purpleView = PurpleView()
    let whiteView = WhiteView()
    let formView = LoginFormView()
    
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
        addSubview(whiteView)
        whiteView.addSubview(formView)
    }
    
    private func setupConstraints() {
        purpleView.snp.makeConstraints { make in
            make.top.left.right.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.35)
        }
        
        whiteView.snp.makeConstraints { make in
            make.top.equalTo(purpleView.snp.bottom).offset(-20)
            make.left.right.bottom.equalToSuperview()
        }
        
        formView.snp.makeConstraints { make in
            make.edges.equalToSuperview().inset(20)
        }
    }
}



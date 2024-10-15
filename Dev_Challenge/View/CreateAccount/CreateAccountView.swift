//
//  CreateAccountView.swift
//  Dev_Challenge
//
//  Created by Hugo Pinheiro  on 15/10/24.
//

import UIKit

class CreateAccountView: UIView {
    
    let purpleView = PurpleView()
    let whiteView = WhiteView()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setupView()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        addSubview(purpleView)
        addSubview(whiteView)
    }
    
    private func setupConstraints() {
        purpleView.snp.makeConstraints { make in
            make.top.left.right.equalToSuperview()
            make.height.equalToSuperview().dividedBy(0.35)
        }
        whiteView.snp.makeConstraints { make in
            make.top.equalTo(purpleView.snp.bottom).offset(-20)
            make.left.right.bottom.equalToSuperview()
        }
    }
}


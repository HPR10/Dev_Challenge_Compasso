//
//  CustomHeaderView.swift
//  Dev_Challenge
//
//  Created by Hugo Pinheiro  on 18/10/24.
//

import UIKit
import SnapKit

class CustomHeaderView: UIView {

    let profileImageView = CustomImage(imageName: "Avatars")
    let searchTextField = CustomTextField(placeholder: "Search something", iconName: "loup", iconPosition: .right)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        addSubview(profileImageView)
        addSubview(searchTextField)

        
        profileImageView.enableTapGesture(enabled: true) {
            print("Imagem clicada")
        }
    }
    
    private func setupConstraints() {
        profileImageView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(60)
            make.left.equalToSuperview().offset(16)
            make.width.height.equalTo(55)
        }
        
        searchTextField.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(60)
            make.left.equalTo(profileImageView).offset(80)
            make.right.equalToSuperview().offset(-20)
            make.height.equalTo(55)
        }
    }
    
}

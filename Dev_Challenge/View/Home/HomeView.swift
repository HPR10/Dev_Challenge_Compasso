//
//  HomeView.swift
//  Dev_Challenge
//
//  Created by Hugo Pinheiro  on 16/10/24.
//

import UIKit
import SnapKit

class HomeView: UIView {
    
    let headerView = WhiteView()
    let profileImagView = CustomImage(imageName: "Avatars")
    let searchTextField = CustomTextField(placeholder: "Search something", iconName: "loup", iconPosition: .right)
    let grayView = GrayView()
    let titleLabel = CustomLabel(text: "Welcome to My statement", fontSize: 28, isbold: true)
    let image = CustomImage(imageName: "Image")
    let subtitle = CustomLabel(text: "Now that you are logged in, you can view\n your statement and change you profile.\n Enjoy!", fontSize: 16, numberOfLines: 3)
    let stackView: UIStackView
    
    override init(frame: CGRect) {
        stackView = UIStackView(arrangedSubviews: [titleLabel, image, subtitle])
        super.init(frame: frame)
        setupView()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        
        addSubview(headerView)
        headerView.addSubview(profileImagView)
        headerView.addSubview(searchTextField)
        
        addSubview(grayView)
        
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.spacing = 60
        stackView.distribution = .equalSpacing
        
        grayView.addSubview(stackView)
    }
    
    private func setupConstraints() {
        
        headerView.snp.makeConstraints { make in
            make.top.left.right.equalToSuperview()
               make.bottom.equalTo(grayView.snp.top)
        }
        
        profileImagView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(60) // distancia do topo
            make.left.equalToSuperview().offset(16) // distancia da esquerda
            make.width.height.equalTo(55) // tamanho da imagem
        }
        
        searchTextField.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(60)
               make.left.equalTo(profileImagView.snp.right).offset(50)
            make.right.equalToSuperview().offset(-32)
               make.height.equalTo(55)
           }
        
        grayView.snp.makeConstraints { make in
            make.left.right.bottom.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.85)
        }
        
        stackView.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
        }
    }
}


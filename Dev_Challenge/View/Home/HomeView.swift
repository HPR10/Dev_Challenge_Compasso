//
//  HomeView.swift
//  Dev_Challenge
//
//  Created by Hugo Pinheiro  on 16/10/24.
//

import UIKit
import SnapKit

class HomeView: UIView {
    
    let whiteView = WhiteView()
    let profileImageView = CustomImage(imageName: "Avatars")
    let searchTextField = CustomTextField(placeholder: "Search something", iconName: "loup", iconPosition: .right)
    let separatorView = CuastomSeparatorView(color: .lightGray, thickness: 1.0)
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
        
        addSubview(whiteView)
        whiteView.addSubview(profileImageView)
        whiteView.addSubview(searchTextField)
        addSubview(separatorView)
        addSubview(grayView)
        
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.spacing = 60
        stackView.distribution = .equalSpacing
        
        grayView.addSubview(stackView)
    }
    
    private func setupConstraints() {
        whiteView.snp.makeConstraints { make in
            make.top.left.right.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.15) // Altura fixa para whiteView
        }
        
        profileImageView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(60) // Distância do topo
            make.left.equalToSuperview().offset(16) // Distância da esquerda
            make.width.height.equalTo(55) // Tamanho da imagem
        }
        
        searchTextField.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(60)
            make.left.equalTo(profileImageView.snp.right).offset(50)
            make.right.equalToSuperview().offset(-20)
            make.height.equalTo(55)
        }
        
        separatorView.snp.makeConstraints { make in
            make.top.equalTo(whiteView.snp.bottom)
            make.left.right.equalToSuperview()
            make.height.equalTo(0.5) // Definindo uma altura para a linha separadora
        }
        
        grayView.snp.makeConstraints { make in
            make.top.equalTo(separatorView.snp.bottom) // Posiciona a grayView logo abaixo da linha
            make.left.right.bottom.equalToSuperview() // O grayView ocupa o resto da tela
        }
        
        stackView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(80)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
        }
    }
}


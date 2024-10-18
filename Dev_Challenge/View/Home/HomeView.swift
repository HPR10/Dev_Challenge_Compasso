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
    let headerView = CustomHeaderView()
    let grayView = GrayView()
    let separatorView = CuastomSeparatorView(color: .lightGray, thickness: 1.0)
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
        whiteView.addSubview(headerView)
        addSubview(grayView)
        grayView.addSubview(separatorView)
        grayView.addSubview(stackView)
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.spacing = 60
        stackView.distribution = .equalSpacing
    }
    
    private func setupConstraints() {
        whiteView.snp.makeConstraints { make in
            make.top.left.right.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.15) // Altura fixa para whiteView
        }
        
        headerView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
                
        grayView.snp.makeConstraints { make in
            make.top.equalTo(whiteView.snp.bottom) 
            make.left.right.bottom.equalToSuperview() // O grayView ocupa o resto da tela
        }
        separatorView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.right.equalToSuperview()
            make.height.equalTo(0.5)
        }
        
        stackView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(80)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
        }
    }
}


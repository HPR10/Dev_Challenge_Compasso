//
//  PurpleView.swift
//  Dev_Challenge
//
//  Created by Hugo Pinheiro  on 14/10/24.
//

import UIKit

class PurpleView: UIView {
    
    let image = CustomImage(imageName: "Vector", contentMode: .scaleAspectFit)
    let backgroundView = CustomBackground(backgroundColor: UIColor(hex: "#8E48EC"))
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        addSubview(backgroundView)
        backgroundView.addSubview(image)
    }
    
    private func setupConstraints() {
        
        backgroundView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        image.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
            make.height.equalTo(37)
            make.width.equalTo(250)
        }
    }
}

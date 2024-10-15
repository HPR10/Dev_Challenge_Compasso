//
//  PurpleView.swift
//  Dev_Challenge
//
//  Created by Hugo Pinheiro  on 14/10/24.
//

import UIKit

class PurpleView: UIView {
    
    let image = CustomImage(imageName: "Vector", contentMode: .scaleAspectFit)
    
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
        addSubview(image)
    }
    
    private func setupConstraints() {
        image.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
            make.height.equalTo(37)
            make.width.equalTo(250)
        }
    }
    
    private func setupAppearance() {
        self.backgroundColor = UIColor(hex: "#8E48EC")
    }
}

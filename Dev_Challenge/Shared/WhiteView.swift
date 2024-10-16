//
//  WhiteView.swift
//  Dev_Challenge
//
//  Created by Hugo Pinheiro  on 14/10/24.
//

import UIKit

class WhiteView: UIView {
    
    let backgroundView = CustomBackground(backgroundColor: UIColor(hex: "#FFFFFF"))
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setupView()
        setupConstraints()
        setupAppearance()
    }
    
    private func setupView() {
        addSubview(backgroundView)
    }
    
    private func setupConstraints() {
        backgroundView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    private func setupAppearance() {
        self.layer.cornerRadius = 20
        self.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        self.layer.masksToBounds = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

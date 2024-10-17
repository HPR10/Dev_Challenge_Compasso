//
//  GrayView.swift
//  Dev_Challenge
//
//  Created by Hugo Pinheiro  on 16/10/24.
//

import UIKit

class GrayView: UIView {
    
    let backgroundView = CustomBackground(backgroundColor: UIColor(hex: "#EFEFF0"))

    override init(frame: CGRect) {
        super.init(frame: frame)
         setupView()
         setupConstraints()
    }
    
    private func setupView() {
        addSubview(backgroundView)
    }
    
    private func setupConstraints() {
        backgroundView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

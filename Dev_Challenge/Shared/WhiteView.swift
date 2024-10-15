//
//  WhiteView.swift
//  Dev_Challenge
//
//  Created by Hugo Pinheiro  on 14/10/24.
//

import UIKit

class WhiteView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setupAppearance()
    }
    
    private func setupAppearance() {
        self.backgroundColor = .white
        self.layer.cornerRadius = 20
        self.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        self.layer.masksToBounds = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

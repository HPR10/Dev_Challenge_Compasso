//
//  CustomButton.swift
//  Dev_Challenge
//
//  Created by Hugo Pinheiro  on 11/10/24.
//

import UIKit

class CustomButton: UIButton {
    init(title: String, backgroundColor: UIColor = .systemBlue) {
        super.init(frame: .zero)
        self.setTitle(title, for: .normal)
        self.backgroundColor = backgroundColor
        self.setTitleColor(.white, for: .normal)
        self.layer.cornerRadius = 5
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

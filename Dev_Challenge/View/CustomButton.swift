//
//  CustomButton.swift
//  Dev_Challenge
//
//  Created by Hugo Pinheiro  on 11/10/24.
//

import UIKit

class CustomButton: UIButton {
    init(title: String, backgroundColor: UIColor = .systemBlue, borderColor: UIColor? = nil,
         borderWidth: CGFloat = 0, isbold: Bool = false, textColor: UIColor = .white) {
        super.init(frame: .zero)
        self.setTitle(title, for: .normal)
        self.backgroundColor = backgroundColor
        self.setTitleColor(textColor, for: .normal)
        self.layer.cornerRadius = 5
        self.translatesAutoresizingMaskIntoConstraints = false
        
        if isbold {
            self.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        } else {
            self.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        }
        
        if let borderColor = borderColor {
            self.layer.borderColor = borderColor.cgColor
            self.layer.borderWidth = borderWidth
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

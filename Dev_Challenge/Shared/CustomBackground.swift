//
//  CustomBackground.swift
//  Dev_Challenge
//
//  Created by Hugo Pinheiro  on 12/10/24.
//

import UIKit

class CustomBackground: UIView {
    
    init(backgroundColor: UIColor, cornerRadius: CGFloat = 0) {
        super.init(frame: .zero)
        self.backgroundColor = backgroundColor
        self.layer.cornerRadius = cornerRadius
        self.clipsToBounds = true
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

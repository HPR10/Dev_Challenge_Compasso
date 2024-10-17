//
//  CustomTextField.swift
//  Dev_Challenge
//
//  Created by Hugo Pinheiro  on 11/10/24.
//

import UIKit

enum IconPosition {
    case left
    case right
}

class CustomTextField: UITextField {
    
    init(placeholder: String, isSecure: Bool = false, iconName: String? = nil, iconPosition: IconPosition = .left, borderColor: UIColor = .lightGray, borderWidth: CGFloat = 1.0, cornerRadius: CGFloat = 5.0) {
        super.init(frame: .zero)
        self.placeholder = placeholder
        self.borderStyle = .roundedRect
        self.isSecureTextEntry = isSecure
        self.autocapitalizationType = .none
        self.translatesAutoresizingMaskIntoConstraints = false
        
        self.layer.borderColor = borderColor.cgColor
        self.layer.borderWidth = borderWidth
        self.layer.cornerRadius = cornerRadius
        self.layer.masksToBounds = true
        
        if let iconName = iconName {
            setupIcon(iconName: iconName, position: iconPosition)
        }
        
        setupPadding()
    }
    
    private func setupIcon(iconName: String, position: IconPosition) {
        let iconView = UIImageView(image: UIImage(named: iconName))
        iconView.contentMode = .scaleAspectFit
        iconView.frame = CGRect(x:0, y: 0, width: 24, height: 24)
        
        let iconContainerView = UIView(frame: CGRect(x: 0, y: 0, width: 40, height: 24))
        iconContainerView.addSubview(iconView)
        iconView.center = iconContainerView.center
        
        switch position {
         case .left:
             leftView = iconContainerView
             leftViewMode = .always
         case .right:
             rightView = iconContainerView
             rightViewMode = .always
         }
    }
    
    private func setupPadding() {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: self.frame.height))
        leftView = paddingView
        leftViewMode = .always
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

//
//  CustomTextField.swift
//  Dev_Challenge
//
//  Created by Hugo Pinheiro  on 11/10/24.
//

import UIKit

class CustomTextField: UITextField {
    
    init(placeholder: String, isSecure: Bool = false, leftIconName: String? = nil, borderColor: UIColor = .lightGray, borderWidth: CGFloat = 1.0, cornerRadius: CGFloat = 5.0) {
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
        
        if let iconName = leftIconName {
            setupLeftIcon(iconName: iconName)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupLeftIcon(iconName: String) {
        let iconView = UIImageView(image: UIImage(named: iconName))
        iconView.contentMode = .scaleAspectFit
        iconView.frame = CGRect(x:0, y: 0, width: 24, height: 24)
        
        let iconContainerView = UIView(frame: CGRect(x: 0, y: 0, width: 40, height: 24))
        iconContainerView.addSubview(iconView)
        iconView.center = iconContainerView.center
        
        leftView = iconContainerView
        leftViewMode = .always
    }
}

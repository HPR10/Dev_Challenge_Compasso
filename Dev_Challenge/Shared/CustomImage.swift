//
//  CustomImage.swift
//  Dev_Challenge
//
//  Created by Hugo Pinheiro  on 12/10/24.
//

import UIKit

class CustomImage: UIImageView {
    
    private var tapHandler: (() -> Void)?
    
    init(imageName: String, contentMode: UIView.ContentMode = .scaleAspectFit, cornerRadius: CGFloat = 0) {
        super.init(frame: .zero)
        self.image = UIImage(named: imageName)
        self.contentMode = contentMode
        self.layer.cornerRadius = cornerRadius
        self.clipsToBounds = true
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func enableTapGesture(enabled: Bool, action: (() -> Void)? = nil) {
        self.isUserInteractionEnabled = enabled
        if enabled {
            if tapHandler == nil, let action = action {
                let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTap))
                addGestureRecognizer(tapGesture)
                tapHandler = action
            }
        } else {
            gestureRecognizers?.forEach { removeGestureRecognizer($0)}
            tapHandler = nil
        }
    }
    
    @objc private func handleTap() {
        tapHandler?()
    }
}

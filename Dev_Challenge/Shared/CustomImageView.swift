//
//  CustomImageView.swift
//  Dev_Challenge
//
//  Created by Hugo Pinheiro  on 12/10/24.
//

import UIKit

class CustomImageView: UIImageView {
    
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
}

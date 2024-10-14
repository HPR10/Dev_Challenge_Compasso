//
//  CustomLabel.swift
//  Dev_Challenge
//
//  Created by Hugo Pinheiro  on 12/10/24.
//

import UIKit

class CustomLabel: UILabel {
    
    init(text: String, fontSize: CGFloat = 16, fontWeight: UIFont.Weight = .regular,
         textColor: UIColor = .black, numberOfLines: Int = 1, textAlignment: NSTextAlignment = .center, isbold: Bool = false, lineSpacing: CGFloat = 4.0) {
        
        super.init(frame: .zero)
        self.numberOfLines = numberOfLines
        self.lineBreakMode = .byWordWrapping
        self.translatesAutoresizingMaskIntoConstraints = false
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = lineSpacing
        paragraphStyle.alignment = textAlignment
        
        let font: UIFont
        if isbold {
            font = UIFont.boldSystemFont(ofSize: fontSize)
        } else {
            font = UIFont.systemFont(ofSize: fontSize, weight:  fontWeight)
        }
        
        let attributedString = NSAttributedString(
            string: text,
            attributes: [.paragraphStyle: paragraphStyle, .foregroundColor: textColor, .font: font]
        )
        self.attributedText = attributedString
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


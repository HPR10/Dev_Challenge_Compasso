//
//  CuastomSeparatorView.swift
//  Dev_Challenge
//
//  Created by Hugo Pinheiro  on 17/10/24.
//

import UIKit

class CuastomSeparatorView: UIView {
    
    init(color: UIColor = .lightGray, thickness: CGFloat = 1.0) {
        super.init(frame: .zero)
        self.backgroundColor = color
        self.translatesAutoresizingMaskIntoConstraints = false
        
        self.snp.makeConstraints { make in
            make.height.equalTo(thickness)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

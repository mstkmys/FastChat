//
//  WelcomeView.swift
//  FastChat
//
//  Created by Miyoshi Masataka on 2018/03/12.
//  Copyright © 2018年 Masataka Miyoshi. All rights reserved.
//

import UIKit

class WelcomeView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        [].forEach{ self.addSubview($0) }
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // Layout Subviews
    override func layoutSubviews() {
        
        
        
    }

}

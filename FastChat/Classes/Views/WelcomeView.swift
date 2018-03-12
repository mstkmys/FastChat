//
//  WelcomeView.swift
//  FastChat
//
//  Created by Miyoshi Masataka on 2018/03/12.
//  Copyright © 2018年 Masataka Miyoshi. All rights reserved.
//

import UIKit

class WelcomeView: UIView {
    
    let loginButton: UIButton = {
       
        let button = UIButton()
        button.backgroundColor = UIColor(red: 5 / 255, green: 75 / 255, blue: 45 / 255, alpha: 1.0)
        button.setTitle("ログイン", for: .normal)
        button.layer.cornerRadius = 10
        button.tag = 2
        button.addTarget(self, action: #selector(WelcomeViewController.buttonTapped(_:)), for: .touchUpInside)
        
        return button
        
    }()
    
    let registerButton: UIButton = {
       
        let button = UIButton()
        button.backgroundColor = UIColor(red: 5 / 255, green: 175 / 255, blue: 75 / 255, alpha: 1.0)
        button.setTitle("新規登録", for: .normal)
        button.layer.cornerRadius = 10
        button.tag = 1
        button.addTarget(self, action: #selector(WelcomeViewController.buttonTapped(_:)), for: .touchUpInside)
        
        return button
        
    }()
    
    // MARK: - Initializer
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        [loginButton, registerButton].forEach{ self.addSubview($0) }
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - LayoutSubviews
    
    override func layoutSubviews() {
        
        loginButton.anchor(
            top: nil,
            leading: self.leadingAnchor,
            bottom: self.bottomAnchor,
            trailing: self.trailingAnchor,
            padding: .init(top: 20, left: 20, bottom: 20, right: 20),
            size: .init(width: 0, height: 70)
        )
        
        registerButton.anchor(
            top: nil,
            leading: self.leadingAnchor,
            bottom: loginButton.topAnchor,
            trailing: self.trailingAnchor,
            padding: .init(top: 20, left: 20, bottom: 20, right: 20)
        )
        registerButton.anchorSize(to: loginButton)
        
    }

}




















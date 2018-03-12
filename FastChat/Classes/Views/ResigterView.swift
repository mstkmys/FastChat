//
//  ResigterView.swift
//  FastChat
//
//  Created by Miyoshi Masataka on 2018/03/12.
//  Copyright © 2018年 Masataka Miyoshi. All rights reserved.
//

import UIKit

class ResigterView: UIView {
    
    let registerButton: UIButton = {
        
        let button = UIButton()
        button.backgroundColor = UIColor(red: 5 / 255, green: 175 / 255, blue: 75 / 255, alpha: 1.0)
        button.setTitle("新規登録", for: .normal)
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(RegisterViewController.buttonTapped(_:)), for: .touchUpInside)
        
        return button
        
    }()
    
    let emailTextField: UITextField = {
       
        let textField = UITextField()
        textField.placeholder = "Email"
        textField.textAlignment = .center
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 10
        
        return textField
        
    }()
    
    let passwordTextField: UITextField = {
        
        let textField = UITextField()
        textField.placeholder = "Password"
        textField.textAlignment = .center
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 10
        
        return textField
        
    }()

    // MARK: - Initialize
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // Add Views
        [registerButton, passwordTextField, emailTextField].forEach{ self.addSubview($0) }
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - LayoutSubviews
    
    override func layoutSubviews() {
        
        registerButton.anchor(
            top: self.centerYAnchor,
            leading: self.leadingAnchor,
            bottom: nil,
            trailing: self.trailingAnchor,
            padding: .init(top: 20, left: 20, bottom: 20, right: 20),
            size: .init(width: 0, height: 50)
        )
        
        passwordTextField.anchor(
            top: nil,
            leading: self.leadingAnchor,
            bottom: registerButton.topAnchor,
            trailing: self.trailingAnchor,
            padding: .init(top: 20, left: 20, bottom: 20, right: 20),
            size: .init(width: 0, height: 50)
        )
        
        emailTextField.anchor(
            top: nil,
            leading: self.leadingAnchor,
            bottom: passwordTextField.topAnchor,
            trailing: self.trailingAnchor,
            padding: .init(top: 20, left: 20, bottom: 20, right: 20),
            size: .init(width: 0, height: 50)
        )
        
    }

}















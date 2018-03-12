//
//  LoginView.swift
//  FastChat
//
//  Created by Miyoshi Masataka on 2018/03/12.
//  Copyright © 2018年 Masataka Miyoshi. All rights reserved.
//

import UIKit

class LoginView: UIView {

    let loginButton: UIButton = {
        
        let button = UIButton()
        button.backgroundColor = UIColor(red: 5 / 255, green: 75 / 255, blue: 45 / 255, alpha: 1.0)
        button.setTitle("ログイン", for: .normal)
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(LoginViewController.buttonTapped(_:)), for: .touchUpInside)
        
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
        textField.isSecureTextEntry = true
        
        return textField
        
    }()
    
    // MARK: - Initialize
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // Add Views
        [loginButton, passwordTextField, emailTextField].forEach{ self.addSubview($0) }
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - LayoutSubviews
    
    override func layoutSubviews() {
        
        loginButton.anchor(
            top: nil,
            leading: self.leadingAnchor,
            bottom: self.centerYAnchor,
            trailing: self.trailingAnchor,
            padding: .init(top: 20, left: 20, bottom: 0, right: 20),
            size: .init(width: 0, height: 50)
        )
        
        passwordTextField.anchor(
            top: nil,
            leading: self.leadingAnchor,
            bottom: loginButton.topAnchor,
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























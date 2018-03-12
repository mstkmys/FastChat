//
//  LoginViewController.swift
//  FastChat
//
//  Created by Miyoshi Masataka on 2018/03/12.
//  Copyright © 2018年 Masataka Miyoshi. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    let loginView: LoginView = {
        
        let loginView = LoginView(frame: UIScreen.main.bounds)
        loginView.backgroundColor = UIColor(patternImage: #imageLiteral(resourceName: "background1"))
        
        return loginView
        
    }()
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Add Views
        [loginView].forEach{ self.view.addSubview($0) }
        
        setUpNavigation()
        
    }
    
    // MARK: - Methods
    
    private func setUpNavigation() {
        
        self.navigationItem.title = "ログイン"
        
    }
    
    // MARK: - Actions
    
    @objc func buttonTapped(_ sender: UIButton) {
        
        
        
    }

}























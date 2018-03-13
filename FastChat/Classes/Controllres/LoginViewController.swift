//
//  LoginViewController.swift
//  FastChat
//
//  Created by Miyoshi Masataka on 2018/03/12.
//  Copyright © 2018年 Masataka Miyoshi. All rights reserved.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {

    let loginView: LoginView = {
        
        let loginView = LoginView(frame: UIScreen.main.bounds)
        loginView.backgroundColor = UIColor(patternImage: #imageLiteral(resourceName: "background1"))
        
        return loginView
        
    }()
    
    // MARK: - Lifecycle
    
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
        
        let viewController = ChatViewController()
        self.navigationController?.pushViewController(viewController, animated: true)

        
//        Auth.auth().signIn(withEmail: loginView.emailTextField.text!, password: loginView.passwordTextField.text!) {
//            user, error in
//
//            if error != nil {
//                print("Error, \(String(describing: error))")
//            }
//            else {
//
//                // Success
//                let viewController = ChatViewController()
//                self.navigationController?.pushViewController(viewController, animated: true)
//
//            }
//
//        }
        
    }

}























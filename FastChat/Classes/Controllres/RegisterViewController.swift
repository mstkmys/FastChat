//
//  RegisterViewController.swift
//  FastChat
//
//  Created by Miyoshi Masataka on 2018/03/12.
//  Copyright © 2018年 Masataka Miyoshi. All rights reserved.
//

import UIKit
import FirebaseAuth

class RegisterViewController: UIViewController {
    
    let registerView: ResigterView = {
       
        let registerView = ResigterView(frame: UIScreen.main.bounds)
        registerView.backgroundColor = UIColor(patternImage: #imageLiteral(resourceName: "background1"))
        
        return registerView
        
    }()
    
    // MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()

        // Add Views
        [registerView].forEach{ self.view.addSubview($0) }
        
        setUpNavigation()
        
    }
    
    // MARK: - Methods
    
    private func setUpNavigation() {
        
        self.navigationItem.title = "新規登録"
        
    }
    
    // MARK: - Actions
    
    @objc func buttonTapped(_ sender: UIButton) {
    
        Auth.auth().createUser(withEmail: registerView.emailTextField.text!, password: registerView.passwordTextField.text!){
            user, error in
            
            if error != nil {
                print("Error: \(String(describing: error))")
            }
            else {
                
                // Success
//                let viewController = WelcomeViewController()
//                self.navigationController?.pushViewController(viewController, animated: true)
                
            }
            
        }
    
    }

}


















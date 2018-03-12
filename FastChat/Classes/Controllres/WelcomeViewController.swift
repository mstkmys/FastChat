//
//  WelcomeViewController.swift
//  FastChat
//
//  Created by Miyoshi Masataka on 2018/03/12.
//  Copyright © 2018年 Masataka Miyoshi. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    let welcomeView: WelcomeView = {
       
        let welcomeView = WelcomeView(frame: UIScreen.main.bounds)
        welcomeView.backgroundColor = UIColor(patternImage: #imageLiteral(resourceName: "background"))
        
        return welcomeView
        
    }()
    
    // MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()

        // Add Views
        [welcomeView].forEach{ self.view.addSubview($0) }
        
        setupNavigation()
        
    }
    
    // MARK: - Methods
    
    private func setupNavigation() {
        
        self.navigationItem.title = "WELCOME"
        
    }

}
















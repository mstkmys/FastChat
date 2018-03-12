//
//  ChatViewController.swift
//  FastChat
//
//  Created by Miyoshi Masataka on 2018/03/12.
//  Copyright © 2018年 Masataka Miyoshi. All rights reserved.
//

import UIKit

class ChatViewController: UIViewController {
    
    let chatView: ChatView = {
       
        let chatView = ChatView(frame: UIScreen.main.bounds)
        chatView.backgroundColor = .white
        
        return chatView
        
    }()
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Add Views
        [chatView].forEach{ self.view.addSubview($0) }
        
        setUpNavigation()
        
    }
    
    // MARK: - Methods
    
    private func setUpNavigation() {
        
        self.navigationController?.title = "Chat"
        
    }
    
    // MARK: - Actions

}
















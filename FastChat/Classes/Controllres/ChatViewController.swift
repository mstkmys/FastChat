//
//  ChatViewController.swift
//  FastChat
//
//  Created by Miyoshi Masataka on 2018/03/12.
//  Copyright © 2018年 Masataka Miyoshi. All rights reserved.
//

import UIKit
import FirebaseAuth

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
        
        // TableView: DatasourceとDelegate
        chatView.tableView.dataSource = self
        chatView.tableView.delegate = self
        
        // TextFiled: Dategate
        chatView.chatTextField.delegate = self
        
    }
    
    // MARK: - Methods
    
    private func setUpNavigation() {
        
        self.navigationController?.title = "Chat"
        
        let logoutButton = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(self.logout))
        self.navigationItem.setRightBarButton(logoutButton, animated: true)
        
    }
    
    // MARK: - Actions
    
    @objc private func logout() {
        
        do {
            try Auth.auth().signOut()
            self.navigationController?.popToRootViewController(animated: true)
        }
        catch {
            print("Error, there was a problem siging out.")
        }
        
    }

}

// MARK: - UITableViewDataSource
/**********************************************************************************************************/
extension ChatViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = chatView.tableView.dequeueReusableCell(withIdentifier: NSStringFromClass(ChatTableViewCell.self), for: indexPath) as! ChatTableViewCell
        
        let messageArray = ["First message", "Second message", "Third message"]
        
        cell.message.text = messageArray[indexPath.row]
        
        return cell
        
    }
    
}

// MARK: - UITableViewDelegate
/**********************************************************************************************************/
extension ChatViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print("Selected: \(indexPath.row)")
        
    }
    
}

// MARK: - UITextFieldDelegate
/**********************************************************************************************************/
extension ChatViewController: UITextFieldDelegate {
    
    
    
}






















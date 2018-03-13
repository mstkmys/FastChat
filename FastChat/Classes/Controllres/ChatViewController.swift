//
//  ChatViewController.swift
//  FastChat
//
//  Created by Miyoshi Masataka on 2018/03/12.
//  Copyright © 2018年 Masataka Miyoshi. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseDatabase
import Chameleon

class ChatViewController: UIViewController {
    
    let chatView: ChatView = {
       
        let chatView = ChatView(frame: UIScreen.main.bounds)
        chatView.backgroundColor = .white
        
        return chatView
        
    }()
    
    // MARK: - Properties
    
    var messageArray: [Message] = [Message]()
    
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
        
        // Recieve Chage Messages
        retrieveMessages()
        
    }
    
    // MARK: - Methods
    
    private func setUpNavigation() {
        
        self.navigationController?.title = "Chat"
        
        let logoutButton = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(self.logout))
        self.navigationItem.setRightBarButton(logoutButton, animated: true)
        
    }
    
    private func retrieveMessages() {
        
        let messageDB = Database.database().reference().child("Messages")
        
        messageDB.observe(.childAdded) { snapshot in
            
            let value = snapshot.value as! Dictionary<String, String>
            
            guard let text = value["MessageBody"] else { return }
            guard let sender = value["Sender"] else { return }
            
            let message = Message()
            message.body = text
            message.sender = sender
            
            self.messageArray.append(message)
            
            self.chatView.tableView.reloadData()
            
        }
        
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
        return messageArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = chatView.tableView.dequeueReusableCell(withIdentifier: NSStringFromClass(ChatTableViewCell.self), for: indexPath) as! ChatTableViewCell
        
        cell.message.text = self.messageArray[indexPath.row].body
        cell.senderUserName.text = self.messageArray[indexPath.row].sender
        
        if cell.senderUserName.text == Auth.auth().currentUser?.email as String! {
            
            cell.iconImageView.backgroundColor = .flatMint()
            
        }
        
        return cell
        
    }
    
}

// MARK: - UITableViewDelegate
/**********************************************************************************************************/
extension ChatViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
    
}

// MARK: - UITextFieldDelegate
/**********************************************************************************************************/
extension ChatViewController: UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
        UIView.animate(withDuration: 0.5) {
            
            // テキストフィールド上げる
            
        }
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        UIView.animate(withDuration: 0.5) {
            
            // テキストフィールド下げる
            
        }
        
        chatView.chatTextField.isEnabled = false
        
        let messageDB = Database.database().reference().child("Messages")
        
        let messageDictionary = [
            "Sender": Auth.auth().currentUser?.email,
            "MessageBody": textField.text!
        ]
        
        messageDB.childByAutoId().setValue(messageDictionary) {
            error, reference in
            
            if error != nil {
                print("MessageSavingError: \(String(describing: error))")
            }
            else {
                
                print("Message Save Success.")
                self.chatView.chatTextField.isEnabled = true
                self.chatView.chatTextField.text = ""
                
            }
            
        }
        
        return true
        
    }
    
}






















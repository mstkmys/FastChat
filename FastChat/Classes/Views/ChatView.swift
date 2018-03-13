//
//  ChatView.swift
//  FastChat
//
//  Created by Miyoshi Masataka on 2018/03/12.
//  Copyright © 2018年 Masataka Miyoshi. All rights reserved.
//

import UIKit

class ChatView: UIView {
    
    let chatTextField: UITextField = {
       
        let textField = UITextField()
        textField.placeholder = "Enter Your Message"
        textField.textAlignment = .center
        textField.layer.borderWidth = 0.5
        textField.enablesReturnKeyAutomatically = true
        
        return textField
        
    }()
    
    let tableView: UITableView = {
       
        let tableView = UITableView()
        tableView.showsVerticalScrollIndicator = false
        tableView.separatorStyle = .none
        tableView.register(ChatTableViewCell.self, forCellReuseIdentifier: NSStringFromClass(ChatTableViewCell.self))
        
        return tableView
        
    }()
    
    // MARK: - Initializer

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        [chatTextField, tableView].forEach{ self.addSubview($0) }
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - LayoutSubviews
    
    override func layoutSubviews() {
        
        chatTextField.anchor(
            top: nil,
            leading: self.leadingAnchor,
            bottom: self.bottomAnchor,
            trailing: self.trailingAnchor,
            padding: .init(top: 10, left: 10, bottom: 10, right: 10),
            size: .init(width: 0, height: 50)
        )
        
        tableView.anchor(
            top: self.safeAreaLayoutGuide.topAnchor,
            leading: self.leadingAnchor,
            bottom: chatTextField.topAnchor,
            trailing: self.trailingAnchor,
            padding: .init(top: 10, left: 10, bottom: 0, right: 10)
        )
        tableView.rowHeight = 80
        
    }
    
}















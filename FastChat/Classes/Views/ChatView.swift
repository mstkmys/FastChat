//
//  ChatView.swift
//  FastChat
//
//  Created by Miyoshi Masataka on 2018/03/12.
//  Copyright © 2018年 Masataka Miyoshi. All rights reserved.
//

import UIKit

class ChatView: UIView {
    
    let chatTextView: UIView = {
       
        let view = UIView()
        view.backgroundColor = .gray
        
        return view
        
    }()
    
    let chatTextField: UITextField = {
       
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.placeholder = "Enter Your Message"
        textField.textAlignment = .center
        textField.layer.cornerRadius = 5
        textField.enablesReturnKeyAutomatically = true
        textField.returnKeyType = .done
        
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
        
        [chatTextView ,chatTextField, tableView].forEach{ self.addSubview($0) }
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - LayoutSubviews
    
    override func layoutSubviews() {
        
        chatTextView.anchor(
            top: nil,
            leading: self.leadingAnchor,
            bottom: self.bottomAnchor,
            trailing: self.trailingAnchor,
            size: .init(width: 0, height: 60)
        )
        
        chatTextField.anchor(
            top: chatTextView.topAnchor,
            leading: chatTextView.leadingAnchor,
            bottom: chatTextView.bottomAnchor,
            trailing: chatTextView.trailingAnchor,
            padding: .init(top: 10, left: 10, bottom: 10, right: 10)
        )
        
        tableView.anchor(
            top: self.safeAreaLayoutGuide.topAnchor,
            leading: self.leadingAnchor,
            bottom: chatTextView.topAnchor,
            trailing: self.trailingAnchor,
            padding: .init(top: 10, left: 10, bottom: 0, right: 10)
        )
//        tableView.rowHeight = UITableViewAutomaticDimension
//        tableView.estimatedRowHeight = 80
        tableView.rowHeight = 80
        
    }
    
}















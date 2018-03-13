//
//  ChatTableViewCell.swift
//  FastChat
//
//  Created by Miyoshi Masataka on 2018/03/13.
//  Copyright © 2018年 Masataka Miyoshi. All rights reserved.
//

import UIKit

class ChatTableViewCell: UITableViewCell {
    
    let messageView: UIView = {
       
        let view = UIView()
        
        return view
        
    }()
    
    let iconImageView: UIImageView = {
       
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = #imageLiteral(resourceName: "egg")
        
        return imageView
        
    }()
    
    let senderUserName: UILabel = {
        
        let label = UILabel()
        
        return label
        
    }()
    
    let message: UILabel = {
       
        let label = UILabel()
        
        return label
        
    }()

    // MARK: - Initialize
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        // Add Views
        [messageView, iconImageView, senderUserName, message].forEach{ self.addSubview($0) }
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - LayoutSubviews
    
    override func layoutSubviews() {
        
        messageView.anchor(
            top: self.topAnchor,
            leading: self.leadingAnchor,
            bottom: self.bottomAnchor,
            trailing: self.trailingAnchor,
            padding: .init(top: 10, left: 0, bottom: 0, right: 0)
        )
        
        iconImageView.anchor(
            top: messageView.topAnchor,
            leading: messageView.leadingAnchor,
            bottom: messageView.bottomAnchor,
            trailing: nil,
            size: .init(width: self.frame.size.height - 10, height: 0)
        )
        
        senderUserName.anchor(
            top: messageView.topAnchor,
            leading: iconImageView.trailingAnchor,
            bottom: nil,
            trailing: messageView.trailingAnchor,
            size: .init(width: 0, height: self.frame.size.height * 3 / 10)
        )

        message.anchor(
            top: senderUserName.bottomAnchor,
            leading: iconImageView.trailingAnchor,
            bottom: self.bottomAnchor,
            trailing: self.trailingAnchor
        )
        
    }
    
}
















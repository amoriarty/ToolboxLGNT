//
//  PaddingController.swift
//  ToolboxLGNT_Example
//
//  Created by Émilie Legent on 14/02/2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import ToolboxLGNT

class PaddingController: GenericViewController {
    private let content = "This portion of text should feet entirely into his textview. textContainerInset padding is adjust with a static UIEdgesInset called toolboxPadding. Otherwise, you will have a 4px gap between you text view border and the actual text container. yy"
    private lazy var textView: UITextView = {
        let textView = UITextView()
        textView.textContainerInset = .toolboxPadding
        textView.backgroundColor = .black
        textView.textColor = .white
        textView.textAlignment = .justified
        textView.isSelectable = false
        textView.isScrollEnabled = false
        textView.isEditable = false
        textView.font = .systemFont(ofSize: 20)
        textView.text = self.content
        return textView
    }()
    
    override func setupViews() {
        super.setupViews()
        view.backgroundColor = .white
        view.addSubview(textView)
    }
    
    override func setupLayouts() {
        super.setupLayouts()
        _ = textView.center(view)
        
        let size = CGSize(width: view.frame.width - 20, height: view.frame.width)
        let textBounds = NSString(string: content).boundingRect(with: size, options: .usesLineFragmentOrigin, attributes: [.font: UIFont.systemFont(ofSize: 20)], context: nil)
        _ = textView.constraint(dimension: .width, constant: textBounds.width)
        _ = textView.constraint(dimension: .height, constant: textBounds.height)
    }
}

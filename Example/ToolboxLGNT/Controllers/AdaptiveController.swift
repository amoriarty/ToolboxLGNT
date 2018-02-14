//
//  AdaptiveController.swift
//  ToolboxLGNT_Example
//
//  Created by Émilie Legent on 14/02/2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import ToolboxLGNT

class AdaptiveController: GenericController {
    private let textView: UITextView = {
        let textView = UITextView()
        textView.font = UIFont.systemFont(ofSize: 16).sizeAdaptedFont
        textView.isSelectable = false
        textView.isEditable = false
        textView.text = "The font of this text should be adaptive. That means the original size of the font is conserve on device bigger than 667px height, and be reduced on other device. Try to bring another simulator near it to compared."
        return textView
    }()
    
    override func setupViews() {
        super.setupViews()
        view.addSubview(textView)
    }
    
    override func setupLayouts() {
        super.setupLayouts()
        _ = textView.fill(view.safeAreaLayoutGuide, constant: 10)
    }
}

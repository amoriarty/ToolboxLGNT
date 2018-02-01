//
//  SecondController.swift
//  ToolboxLGNT_Example
//
//  Created by Émilie Legent on 01/02/2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit

class SecondController: UIViewController {
    private let edgeInset: UITextView = {
        let view = UITextView()
        view.text = "Quis tenetur incidunt natus. Magnam iste quisquam aut sunt nulla ex consequatur nam. Architecto voluptate impedit deserunt quas. Doloremque dolore qui eius laborum deleniti et. Consequuntur consequatur molestiae unde aliquam asperiores sint quia incidunt. Voluptate voluptates enim a maiores quia."
        view.isScrollEnabled = false
        view.isEditable = false
        view.isSelectable = false
        view.textContainerInset = .toolboxPadding
        view.backgroundColor = .white
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        view.addSubview(edgeInset)
        _ = edgeInset.constraint(dimension: .height, constant: 100)
        _ = edgeInset.constraint(.width, to: edgeInset, .height)
        _ = edgeInset.center(view.safeAreaLayoutGuide)
    }
}

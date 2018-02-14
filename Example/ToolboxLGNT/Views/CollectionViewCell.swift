//
//  CollectionViewCell.swift
//  ToolboxLGNT_Example
//
//  Created by Émilie Legent on 14/02/2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import ToolboxLGNT

class CollectionViewCell: GenericCollectionViewCell<UIColor> {
    override var item: UIColor? {
        didSet { backgroundColor = item }
    }
    
    private let label: UILabel = {
        let label = UILabel()
        label.text = "Try to scroll down"
        label.textColor = .white
        label.backgroundColor = .black
        return label
    }()
    
    override func setupViews() {
        super.setupViews()
        print("Collection View Cell: setup views")
        addSubview(label)
    }
    
    override func setupLayouts() {
        super.setupLayouts()
        _ = label.center(self)
        print("Collection View Cell: setup layouts")
    }
}

//
//  ExampleCell.swift
//  ToolboxLGNT_Example
//
//  Created by Émilie Legent on 05/01/2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit
import ToolboxLGNT

class ExampleCell: DatasourceCell {
    override var item: Any? {
        didSet { label.text = item as? String }
    }
    
    let label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "TEST TEST TEST"
        label.textAlignment = .center
        return label
    }()
    
    override func setupViews() {
        super.setupViews()
        backgroundColor = .white
        addSubview(label)
    }
    
    override func setupLayouts() {
        _ = label.fill(self)
    }
}

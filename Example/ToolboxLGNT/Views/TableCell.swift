//
//  TableCell.swift
//  ToolboxLGNT_Example
//
//  Created by Émilie Legent on 14/02/2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import ToolboxLGNT

class TableCell: GenericTableViewCell<String> {
    override var item: String? {
        didSet { textLabel?.text = item }
    }
    
    override func setupViews() {
        super.setupViews()
        print("Table Cell: setup views")
        textLabel?.textColor = .blue
    }
    
    override func setupLayouts() {
        super.setupLayouts()
        print("Table Cell: setup layouts")
    }
}

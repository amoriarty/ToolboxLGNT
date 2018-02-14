//
//  GenericControllerView.swift
//  ToolboxLGNT_Example
//
//  Created by Émilie Legent on 14/02/2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import ToolboxLGNT

class GenericControllerView: GenericView {
    override func setupViews() {
        super.setupViews()
        print("Generic Controller View: setup views")
        backgroundColor = .black
    }
    
    override func setupLayouts() {
        super.setupLayouts()
        print("Generic Controller View: setup layout")
    }
}

//
//  GenericController.swift
//  ToolboxLGNT_Example
//
//  Created by Émilie Legent on 14/02/2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit
import ToolboxLGNT

class GenericController: GenericViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
    
    override func setupViews() {
        super.setupViews()
        print("GenericController: setup views")
    }
    
    override func setupLayouts() {
        super.setupLayouts()
        print("GenericController: setup layouts")
    }
}

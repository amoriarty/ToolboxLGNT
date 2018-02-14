//
//  GenericViewController.swift
//  SwiftyCompanion
//
//  Created by Émilie Legent on 07/02/2018.
//  Copyright © 2018 Alexandre Legent. All rights reserved.
//

import UIKit

open class GenericViewController: UIViewController {
    open override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupLayouts()
    }
    
    open func setupViews() {}
    open func setupLayouts() {}
}

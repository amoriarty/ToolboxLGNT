//
//  GenericController.swift
//  ToolboxLGNT_Example
//
//  Created by Émilie Legent on 14/02/2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import ToolboxLGNT

class GenericController: GenericViewController {
    private let genericView = GenericControllerView()
    private let label: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.textAlignment = .justified
        label.lineBreakMode = .byWordWrapping
        label.text = "Check your console to see if viewDidLoad(), setupViews() and setupLayouts() has been called for the generic controller, as well as for the Generic View placed in the center of the screen"
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Generic Controller: view did load")
        
        view.backgroundColor = .white
        title = "Generic View Controller"
    }
    
    override func setupViews() {
        super.setupViews()
        print("Generic Controller: setup views")
        
        view.addSubview(label)
        view.addSubview(genericView)
    }
    
    override func setupLayouts() {
        super.setupLayouts()
        print("Generic Controller: setup layouts")
        
        _ = label.fill(.horizontaly, view.safeAreaLayoutGuide, constant: 10)
        _ = label.constraint(.top, to: view.safeAreaLayoutGuide, constant: 10)
        
        _ = genericView.center(view)
        _ = genericView.constraint(dimension: .width, constant: 100)
        _ = genericView.constraint(.height, to: genericView, .width)
    }
}

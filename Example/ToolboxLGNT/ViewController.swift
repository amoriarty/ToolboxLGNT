//
//  ViewController.swift
//  ToolboxLGNT
//
//  Created by amoriarty on 01/05/2018.
//  Copyright (c) 2018 amoriarty. All rights reserved.
//

import UIKit
import ToolboxLGNT

class ViewController: UIViewController {
    private let centeredView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        return view
    }()
    
    private let fillingView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .green
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(centeredView)
        view.addSubview(fillingView)
        
        _ = centeredView.constraint(dimension: .height, constant: 100)
        _ = centeredView.constraint(.width, to: centeredView, .height)
        _ = centeredView.center(view)
        
        _ = fillingView.fill(.horizontaly, view)
        _ = fillingView.constraint(.top, to: centeredView, .bottom)
        _ = fillingView.constraint(.height, to: centeredView)
    }
}


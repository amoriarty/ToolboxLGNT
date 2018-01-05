//
//  HorizontalCell.swift
//  ToolboxLGNT_Example
//
//  Created by Émilie Legent on 05/01/2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit
import ToolboxLGNT

class HorizontalCell: DatasourceCell {
    override var item: Any? {
        didSet {
            guard let index = item as? Int else { return }
            label.text = "Page \(index)"
            backgroundColor = index % 2 == 0 ? .purple : .orange
        }
    }
    
    let label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func setupViews() {
        super.setupViews()
        addSubview(label)
    }
    
    override func setupLayouts() {
        super.setupLayouts()
        _ = label.center(self)
    }
}

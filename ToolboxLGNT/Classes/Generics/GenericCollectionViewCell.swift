//
//  GenericCollectionViewCell.swift
//  SwiftyCompanion
//
//  Created by Émilie Legent on 07/02/2018.
//  Copyright © 2018 Alexandre Legent. All rights reserved.
//

import UIKit

open class GenericCollectionViewCell<T: Any>: UICollectionViewCell {
    open var item: T?
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        setupLayouts()
    }
    
    open func setupViews() {}
    open func setupLayouts() {}
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

//
//  GenericTableViewCell.swift
//  ToolboxLGNT
//
//  Created by Émilie Legent on 14/02/2018.
//

import UIKit

open class GenericTableViewCell<T: Any>: UITableViewCell {
    open var item: T?
    
    open func setupViews() {}
    open func setupLayouts() {}
    
    public required init?(coder aDecoder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    public override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
        setupLayouts()
    }
}

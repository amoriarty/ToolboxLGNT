//
//  CollectionViewController.swift
//  ToolboxLGNT_Example
//
//  Created by Émilie Legent on 05/01/2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit
import ToolboxLGNT

class CollectionViewController: DatasourceController {
    private let items = ["hello", "world", "just adding few more cell", "just to be sure"]
    override var types: [DatasourceCell.Type] {
        return [ExampleCell.self]
    }
    
    override func numberOfItems(in section: Int) -> Int {
        return items.count
    }
    
    override func item(at indexPath: IndexPath) -> Any? {
        return items[indexPath.item]
    }
    
    override func sizeForItem(at indexPath: IndexPath) -> CGSize {
        guard let width = collectionView?.frame.width else { return .zero }
        return CGSize(width: width, height: 100)
    }
}

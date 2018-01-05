//
//  HorizontalController.swift
//  ToolboxLGNT_Example
//
//  Created by Émilie Legent on 05/01/2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit
import ToolboxLGNT

class HorizontalController: DatasourceController {
    let items = [0, 1, 2, 3, 4]
    override var types: [DatasourceCell.Type] {
        return [HorizontalCell.self]
    }
    
    override func setup(collectionView: UICollectionView) {
        guard let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout else { return }
        layout.scrollDirection = .horizontal
        collectionView.isPagingEnabled = true
    }
    
    override func numberOfItems(in section: Int) -> Int {
        return items.count
    }
    
    override func item(at indexPath: IndexPath) -> Any? {
        return items[indexPath.item]
    }
    
    override func sizeForItem(at indexPath: IndexPath) -> CGSize {
        return collectionView?.frame.size ?? .zero
    }
    
    override func lineSpacing(in section: Int) -> CGFloat {
        return 0
    }
}

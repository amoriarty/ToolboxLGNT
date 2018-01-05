//
//  DatasourceController.swift
//  ToolboxLGNT
//
//  Created by Émilie Legent on 05/01/2018.
//

import UIKit

open class DatasourceController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    open var types: [DatasourceCell.Type] {
        return []
    }
    
    override open func viewDidLoad() {
        super.viewDidLoad()
        
        var index = 0
        types.forEach { type in
            collectionView?.register(type, forCellWithReuseIdentifier: "\(index)")
            index += 1
        }
    }
    
    
    
    open override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return numberOfItems(in: section)
    }
    
    open override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "\(indexPath.section)", for: indexPath) as! DatasourceCell
        cell.item = item(at: indexPath)
        return cell
    }
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return sizeForItem(at: indexPath)
    }
    
    open func item(at indexPath: IndexPath) -> Any? { return nil }
    open func numberOfItems(in section: Int) -> Int { return 0 }
    open func sizeForItem(at indexPath: IndexPath) -> CGSize { return .zero }
    
    public init() { super.init(collectionViewLayout: UICollectionViewFlowLayout()) }
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

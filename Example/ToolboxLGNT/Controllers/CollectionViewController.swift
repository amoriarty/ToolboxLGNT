//
//  CollectionViewController.swift
//  ToolboxLGNT_Example
//
//  Created by Émilie Legent on 14/02/2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import ToolboxLGNT

class CollectionViewController: GenericCollectionViewController<CollectionViewCell, UIColor> {
    override var items: [[UIColor]]? {
        return [[.white, .blue, .yellow, .brown, .green, .purple, .black]]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Collection View Controller: view did load")
        view.backgroundColor = .white
        title = "Collection View Controller"
    }
    
    override func setupViews() {
        super.setupViews()
        print("Collection View Controller: setup views")
    }
    
    override func setupLayouts() {
        super.setupLayouts()
        print("Collection View Controller: setup layouts")
    }
    
    override func setupCollectionView() {
        super.setupCollectionView()
        print("Collection View Controller: setup collection view")
        collectionView?.isPagingEnabled = true
    }
    
    override func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return collectionView.frame.size
    }
}

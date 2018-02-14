//
//  GenericCollectionViewController.swift
//  SwiftyCompanion
//
//  Created by Émilie Legent on 06/02/2018.
//  Copyright © 2018 Alexandre Legent. All rights reserved.
//

import UIKit

open class GenericCollectionViewController<T: GenericCollectionViewCell<U>, U: Any>: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    private let reuseId = "ReuseID"
    open var items: [[U]]? { return nil }
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupLayouts()
        setupCollectionView()
        collectionView?.register(T.self, forCellWithReuseIdentifier: reuseId)
    }
    
    open func setupViews() {}
    open func setupLayouts() {}
    
    open func setupCollectionView() {
        collectionView?.backgroundColor = .clear
    }
    
    open override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return items?.count ?? 0
    }
    
    open override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items?[section].count ?? 0
    }
    
    open func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 50)
    }
    
    open func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    open func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    open override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseId, for: indexPath) as? T else {
            fatalError("Cell cannot be cast as <\(T.self)>")
        }
        
        cell.item = items?[indexPath.section][indexPath.item]
        return cell
    }
    
    open func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return .zero
    }
    
    public init() { super.init(collectionViewLayout: UICollectionViewFlowLayout()) }
    public required init?(coder aDecoder: NSCoder) { fatalError("init(coder:) has not been implemented") }
}

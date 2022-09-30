//
//  ViewController.swift
//  CollectionView
//
//  Created by Sümeyye Kılıçoğlu on 1.09.2022.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    private var collectionView: UICollectionView?
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 1
        layout.minimumInteritemSpacing = 1 
        layout.itemSize = CGSize(width: (view.frame.size.width/3)-4,
                                 height: (view.frame.size.width/3)-4)
       
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        
        guard let collectionView = collectionView else {
            return
        }
        collectionView.register(CustomollectionViewCell.self, forCellWithReuseIdentifier: CustomollectionViewCell.identifier)
        collectionView.dataSource = self
        collectionView.delegate = self
        view.addSubview(collectionView)
        collectionView.frame = view.bounds
    }
  
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomollectionViewCell.identifier, for: indexPath) as! CustomollectionViewCell
        
        cell.configure(label: "Custom \(indexPath.row)")
        return cell
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30
    }
    
}


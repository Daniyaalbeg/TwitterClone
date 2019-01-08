//
//  HomeController.swift
//  TwitterClone
//
//  Created by Daniyaal Beg on 29/12/2018.
//  Copyright © 2018 dan. All rights reserved.
//

import UIKit

class HomeController: UIViewController {

  let cellID = "cellID"
  let headerID = "headerID"
  let footerID = "footerID"

  weak var collectionView: UICollectionView!
  let dataSource = HomeDataSource()


  override func loadView() {
    super.loadView()
    setupCollectionViewLayout()
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    collectionView.backgroundColor = .white
    collectionView.register(CustomCell.self, forCellWithReuseIdentifier: "cellID")
    collectionView.register(UICollectionViewCell.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: headerID)
    collectionView.register(UICollectionViewCell.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: footerID)

    collectionView.dataSource = dataSource
    collectionView.delegate = dataSource
  }

  func setupCollectionViewLayout() {
    //TODO: Find a way to make the collection view layout methods work. Not sure why they werent working...
    let layout = UICollectionViewFlowLayout()
    layout.itemSize = CGSize(width: view.frame.width, height: 50)
    layout.footerReferenceSize = CGSize(width: view.frame.width, height: 50)
    layout.headerReferenceSize = CGSize(width: view.frame.width, height: 50)

    let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
    collectionView.translatesAutoresizingMaskIntoConstraints = false
    self.view.addSubview(collectionView)
    collectionView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
    collectionView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
    collectionView.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
    collectionView.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
    self.collectionView = collectionView
  }
}


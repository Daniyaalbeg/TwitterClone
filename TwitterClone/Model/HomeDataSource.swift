//
//  HomeDataSource.swift
//  TwitterClone
//
//  Created by Daniyaal Beg on 03/01/2019.
//  Copyright © 2019 dan. All rights reserved.
//

import UIKit

class HomeDataSource: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

  let names = ["Dan1", "Dan2", "Dan3"]
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return names.count
  }

  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellID", for: indexPath) as! CustomCell
    let data = names[indexPath.item]
    cell.wordLabel.text = data
    return cell
  }

  func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {

    if kind == UICollectionView.elementKindSectionHeader {
      let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "headerID", for: indexPath)
      header.backgroundColor = .yellow
      return header
    } else {
      let footer = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "footerID", for: indexPath)
      footer.backgroundColor = .yellow
      return footer
    }
  }
}

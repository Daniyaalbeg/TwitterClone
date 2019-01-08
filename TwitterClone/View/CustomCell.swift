//
//  CustomCell.swift
//  TwitterClone
//
//  Created by Daniyaal Beg on 29/12/2018.
//  Copyright © 2018 dan. All rights reserved.
//

import UIKit

class CustomCell: UICollectionViewCell {
  override init(frame: CGRect) {
    super.init(frame: frame)
    setupViews()
  }

  let wordLabel: UILabel = {
    let label = UILabel()
    label.text = "Word"
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()

  func setupViews() {
    backgroundColor = .red
    addSubview(wordLabel)

    wordLabel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
    wordLabel.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
    wordLabel.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
    wordLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

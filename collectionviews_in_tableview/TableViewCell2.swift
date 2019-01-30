//
//  TableViewCell2.swift
//  collectionviews_in_tableview
//
//  Created by Rian Sanjaya Ng on 27/01/19.
//  Copyright © 2019 Rian Sanjaya Ng. All rights reserved.
//

import UIKit

//protocol CanReceiveDelegateCell2 {
//    func doSegue()
//}

class TableViewCell2: UITableViewCell {

    @IBOutlet weak var collectionView2: UICollectionView!
    
    var collection2Image: [UIImage] = [UIImage(named: "ibukaktus")!, UIImage(named: "fitIt")!, UIImage(named: "ibukaktus")!, UIImage(named: "ibukaktus")!]
//    var delegate: CanReceiveDelegateCell2?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView2.dataSource = self
        collectionView2.delegate = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension TableViewCell2: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return collection2Image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell2", for: indexPath) as! CollectionViewCell2
        let imageData: UIImage = collection2Image[indexPath.row]
        cell.imageCell.image = imageData
        return cell

    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        delegate?.doSegue()
    }
}

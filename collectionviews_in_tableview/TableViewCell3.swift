//
//  TableViewCell3.swift
//  collectionviews_in_tableview
//
//  Created by Rian Sanjaya Ng on 28/01/19.
//  Copyright © 2019 Rian Sanjaya Ng. All rights reserved.
//

import UIKit

class TableViewCell3: UITableViewCell {

    @IBOutlet weak var collectionView3: UICollectionView!
    
    var imageCol: [imageDatCol] = []
    var currentTableRow = 0
    
//    var collection3Image: [UIImage] = [UIImage(named: "ibukaktus")!, UIImage(named: "fitIt")!]
//    var collection2Image: [UIImage] = [UIImage(named: "cactus_obstacle")!, UIImage(named: "stone_obstacle")!, UIImage(named: "usFlag")!]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView3.delegate = self
        collectionView3.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension TableViewCell3: UICollectionViewDelegate, UICollectionViewDataSource {
//    func numberOfSections(in collectionView: UICollectionView) -> Int {
//        return 1
//    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
//        switch currentTableRow {
//        case 0:
//            return collection3Image.count
//        case 1:
//            return collection2Image.count
//        default:
//            return 0
//        }
        
        return imageCol[currentTableRow].images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView3.dequeueReusableCell(withReuseIdentifier: "collectionCell3", for: indexPath) as! CollectionViewCell3
//        print(indexPath.row)
        
//        switch currentTableRow {
//        case 0:
//            let imageData: UIImage = collection3Image[indexPath.row]
//            cell.imageCell.image = imageData
//        case 1:
//            let imageData: UIImage = collection2Image[indexPath.row]
//            cell.imageCell.image = imageData
//        default:
//            return cell
//        }

        let imageData = imageCol[currentTableRow].images[indexPath.row].image
        cell.imageCell.image = UIImage(named: imageData)
        
        return cell
    }
    
    
}

//
//  MainTableViewCell.swift
//  collectionviews_in_tableview
//
//  Created by Rian Sanjaya Ng on 27/01/19.
//  Copyright © 2019 Rian Sanjaya Ng. All rights reserved.
//

import UIKit

protocol CanReceiveDelegate {
    func doSegue()
}

class MainTableViewCell: UITableViewCell {

    @IBOutlet weak var collectionView1: UICollectionView!
    
    var collection1Image: [UIImage] = [UIImage(named: "ibukaktus")!, UIImage(named: "fitIt")!]
    var delegate: CanReceiveDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView1.dataSource = self
        collectionView1.delegate = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

extension MainTableViewCell: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return collection1Image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell1", for: indexPath) as! CollectionViewCell1
        let imageData: UIImage = collection1Image[indexPath.row]
        cell.imageCell.image = imageData
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        print("collection tap")
        delegate?.doSegue()
    
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let vc = storyboard.instantiateViewController(withIdentifier: "TempViewController") as! TempViewController
        
    }
    

}

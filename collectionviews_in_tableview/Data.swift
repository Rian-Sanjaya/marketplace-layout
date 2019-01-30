//
//  Data.swift
//  collectionviews_in_tableview
//
//  Created by Rian Sanjaya Ng on 28/01/19.
//  Copyright © 2019 Rian Sanjaya Ng. All rights reserved.
//

import Foundation

class imageDat {
    var name: String
    var image: String
    
    init(name: String, image: String) {
        self.name = name
        self.image = image
    }
}

class imageDatCol {
    var images: [imageDat]
    
    init(images: [imageDat]) {
        self.images = images
    }
}


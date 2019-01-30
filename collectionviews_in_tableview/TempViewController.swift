//
//  TempViewController.swift
//  collectionviews_in_tableview
//
//  Created by Rian Sanjaya Ng on 29/01/19.
//  Copyright © 2019 Rian Sanjaya Ng. All rights reserved.
//

import UIKit

class TempViewController: UIViewController {

    @IBOutlet weak var tmpButton: UIButton!
    
    var temp: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tmpButton.setTitle(temp, for: .normal)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

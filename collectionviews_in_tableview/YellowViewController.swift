//
//  YellowViewController.swift
//  collectionviews_in_tableview
//
//  Created by Rian Sanjaya Ng on 28/01/19.
//  Copyright © 2019 Rian Sanjaya Ng. All rights reserved.
//

import UIKit

class YellowViewController: UIViewController {

    @IBOutlet weak var yellowButton: UIButton!
    var titleButton: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        yellowButton.setTitle(titleButton, for: .normal)
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

//
//  ViewController.swift
//  collectionviews_in_tableview
//
//  Created by Rian Sanjaya Ng on 27/01/19.
//  Copyright © 2019 Rian Sanjaya Ng. All rights reserved.
//

import UIKit

//protocol ViewControllerCollectionDelegate {
//    func tableViewVisibleIndex(index: Int)
//}

class ViewController: UIViewController, CanReceiveDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var temp: String = ""
    
    var imageCol: [imageDatCol] = [
        imageDatCol(images: [imageDat(name: "ibukaktus", image: "ibukaktus"), imageDat(name: "fit it", image: "fitIt")]),
        imageDatCol(images: [imageDat(name: "cactus", image: "cactus_obstacle"), imageDat(name: "stone", image: "stone_obstacle"), imageDat(name: "US Flag", image: "usFlag")])
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }

    @IBAction func unwindToMain(unwindSeque: UIStoryboardSegue) {
    }
    @IBAction func yellowButtonTouch(_ sender: UIButton) {
        performSegue(withIdentifier: "yellow", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "yellow" {
            if let vc = segue.destination as? YellowViewController {
                vc.titleButton = "Go to main"
            }
        } else if segue.identifier == "cellSegue" {
            if let tempVC = segue.destination as? TempViewController {
                tempVC.temp = "Temp Button"
            }
        }
        
    }
    
    func doSegue() {
        performSegue(withIdentifier: "cellSegue", sender: nil)
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Table View Section 1"
        case 1:
            return "Table View Section 2"
        default:
            return "Table View Section 3"
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 1
        case 1:
            return 1
        default:
            return imageCol.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        var cell: UITableViewCell
        
        var currentCell = ""
        switch indexPath.section {
        case 0:
            currentCell = "tableCell1"
            
            let cell = tableView.dequeueReusableCell(withIdentifier: currentCell, for: indexPath) as! MainTableViewCell
            cell.delegate = self
            return cell
            
        case 1:
            currentCell = "tableCell2"
            
            let cell = tableView.dequeueReusableCell(withIdentifier: currentCell, for: indexPath) as! TableViewCell2
            return cell
            
        default:
            currentCell = "tableCell3"
            
            let cell = tableView.dequeueReusableCell(withIdentifier: currentCell, for: indexPath) as! TableViewCell3
            
//            let images: imageDatCol = imageCol[indexPath.row]
            cell.imageCol = imageCol
            cell.currentTableRow = indexPath.row
            
            return cell

        }
        
//        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("mau seque")
        performSegue(withIdentifier: "cellSegue", sender: nil)
//        switch indexPath.section {
//        case 0:
//            print("mau seque")
//            performSegue(withIdentifier: "cellSegue", sender: nil)
//        default:
//            print("unused")
//        }
    }
    
}


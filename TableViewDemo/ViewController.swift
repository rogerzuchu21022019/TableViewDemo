//
//  ViewController.swift
//  TableViewDemo
//
//  Created by Vu Thanh Nam on 11/05/2022.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource {
    var arr1:[String]!
    var arr2:[String]!
   
 
    @IBOutlet weak var myTableView: UITableView!
    @IBOutlet weak var myTableView2: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.dataSource = self
       
        arr1 = ["Android","Kotlin","Swift"]
        arr2 = ["Noodle","Rice","Chicken","Soup","Fry"]
        myTableView2.dataSource = self
    }
    
   
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if tableView.tag == 0 {
            return arr1.count
        }
        
        if tableView.tag == 1 {
            return arr2.count
        }
            
        return 0
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section \(section+1)"
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CELL")
        if tableView.tag == 0 {
            cell?.textLabel?.text = arr1[indexPath.row]
            cell?.detailTextLabel?.text = "Dong \(indexPath.row)"
        }
        if tableView.tag == 1 {
            cell?.textLabel?.text = arr2[indexPath.row]
            cell?.detailTextLabel?.text = "Dong \(indexPath.row)"
        }
        
        
        return cell!
    }
}


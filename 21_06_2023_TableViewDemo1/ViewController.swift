//
//  ViewController.swift
//  21_06_2023_TableViewDemo1
//
//  Created by Vishal Jagtap on 17/07/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate{

    @IBOutlet weak var foodItemsTableView: UITableView!
    var foodItems : [String] = ["Pav bhaji","Samosa","Upma","Poha","Vadapav"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        foodItemsTableView.dataSource = self
        foodItemsTableView.delegate = self
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        foodItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
       let basicCell = self.foodItemsTableView.dequeueReusableCell(withIdentifier: "basicCell", for: indexPath) as UITableViewCell
     
        basicCell.backgroundColor = .lightGray
        basicCell.textLabel!.text = "\(foodItems[indexPath.row]) -- --\(indexPath.section) -- \(indexPath.row)"
        print("\(foodItems[indexPath.row])")
        print("\(indexPath.section) -- \(indexPath.row) ")
        return basicCell
    }
}


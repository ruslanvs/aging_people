//
//  ViewController.swift
//  aging_people
//
//  Created by Ruslan Suvorov on 3/12/18.
//  Copyright © 2018 Ruslan Suvorov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var items = ["Max", "Tom", "Sol", "John", "Betty", "Lana", "Don", "Ran", "Solo", "Mio", "Bella", "Donna"]

    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell( withIdentifier: "MyCell", for: indexPath )
        
        cell.textLabel?.text = items[indexPath.row]
        cell.detailTextLabel?.text = "\(arc4random_uniform(96)) years old"
        return cell
    }
}

//
//  MyGroupsViewController.swift
//  VKLogger
//
//  Created by Александр Родькин on 12.07.2021.
//

import UIKit

class MyGroupsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
}

extension MyGroupsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 1:
            return 1
        case 2:
            return 2
        default:
            return 3
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "")
        cell.textLabel?.text = "section: \(indexPath.section)"
        cell.detailTextLabel?.text = "row: \(indexPath.row)"
        
        return cell
    }
}

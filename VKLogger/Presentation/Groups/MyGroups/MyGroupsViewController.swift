//
//  MyGroupsViewController.swift
//  VKLogger
//
//  Created by Александр Родькин on 12.07.2021.
//

import UIKit

class MyGroupsViewController: UIViewController {

    
    var groups: [GroupsModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let groupsStorage = GroupsStorage()
        groups = groupsStorage.groups
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "moveToGroupSegue" {
           segue.destination.title = "Group Name"
        }
    }
}

extension MyGroupsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        groups.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = groups[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "moveToGroupSegue", sender: nil)
    }
    
}

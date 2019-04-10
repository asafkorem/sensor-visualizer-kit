//
//  OptionsTableViewController.swift
//  
//
//  Created by Joseph Blau on 3/22/16.
//
//

import UIKit
import SafariServices

class OptionsTableViewController: UITableViewController {

    let resuseIdentifer = "Option Cell"
    let options = ["Tap", "Map", "Pan", "Web", "Shake", "Peek & Pop"]
    
    // MARK: - UITableViewDataSource

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return options.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: resuseIdentifer, for: indexPath)
        cell.textLabel?.text = options[indexPath.row]
        return cell
    }

    // MARK: - UITableViewDelegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let option = options[indexPath.row]
        self.performSegue(withIdentifier: "Show \(option)", sender: self)
    }
}

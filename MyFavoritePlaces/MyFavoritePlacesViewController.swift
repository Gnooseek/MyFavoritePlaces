//
//  MyFAvoritePlacesTableViewController.swift
//  MyFavoritePlaces
//
//  Created by Fill on 21.09.22.
//

import UIKit

class MyFavoritePlacesViewController: UITableViewController {
    
    
    let arrayMyPlaces = ["McDonald's","KFC","Mammo","Union","Venecia"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayMyPlaces.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell
        
        cell.NameLabel?.text = arrayMyPlaces[indexPath.row]
        cell.imageOfPlace?.image = UIImage(named: arrayMyPlaces[indexPath.row])
        cell.imageOfPlace?.layer.cornerRadius = cell.imageOfPlace.frame.height / 2
        cell.imageOfPlace?.clipsToBounds = true
        
        
        return cell
    }
    
    // MARK: - Table view delegate
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
    
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
}


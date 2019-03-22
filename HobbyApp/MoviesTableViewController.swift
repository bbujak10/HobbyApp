//
//  MoviesTableViewController.swift
//  HobbyApp
//
//  Created by Bartosz Bujak on 12/01/2019.
//  Copyright © 2019 Bartosz Bujak. All rights reserved.
//

import UIKit

class MoviesTableViewController: UITableViewController {
    var movies = [
        Movie(title: "Bird Box", director: "Susanne Bier", script: "Eric Heisserer", budget: "19,8 mln USD", year: "2018", poster: "birdbox", trailer: "o2AsIXSh2xo"),
        Movie(title: "Black Mirror: Bandersnatch", director: "David Slade", script: "Charlie Brooker", budget: "---", year: "2018", poster: "bandersnatch", trailer: "XM0xWpBYlNM"),
        Movie(title: "Interstellar", director: "Christopher Nolan", script: "Johnatan Nolan", budget: "165 mln USD", year: "2014", poster: "interstellar", trailer: "zSWdZVtXT7E"),
        Movie(title: "Wolf Of Wall Street", director: "Marton Scorsese", script: "Terence Winter", budget: "100 mln USD", year: "2013", poster: "wolf", trailer: "iszwuX1AK6A")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.prefersLargeTitles = true
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return movies.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "datacell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! MoviesTableViewCell
        
        // Configure the cell...
        cell.titleLabel.text = movies[indexPath.row].title
        cell.directorLabel.text = movies[indexPath.row].director
        cell.scriptLabel.text = movies[indexPath.row].script
        cell.budgetLabel.text = movies[indexPath.row].budget
        cell.yearLabel.text = movies[indexPath.row].year
        cell.posterImageView.image = UIImage(named: movies[indexPath.row].poster)
        
        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "showMovieDetail"){
            if let indexPath = tableView.indexPathForSelectedRow{
                let destinationController = segue.destination as! MovieDetailViewController
                destinationController.thisMovie = movies[indexPath.row]
            }
        }
    }

}

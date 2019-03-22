//
//  BooksTableViewController.swift
//  HobbyApp
//
//  Created by Bartosz Bujak on 12/01/2019.
//  Copyright © 2019 Bartosz Bujak. All rights reserved.
//

import UIKit

class BooksTableViewController: UITableViewController {
    var books = [
        Book(title: "Lśnienie", author: Author(name: "Stephen King", image: "sking"), preview: "lsn"),
        Book(title: "Mgła", author: Author(name: "Stephen King", image: "sking"), preview: "mgl"),
        Book(title: "Sezon Burz", author: Author(name: "Andrzej Sapkowski", image: "asapk"), preview: "sez"),
        Book(title: "Player One", author: Author(name: "Ernest Cline", image: "eclin"), preview: "pla"),
        Book(title: "Historia Krain I Miejsc Legengarnych", author: Author(name: "Umberto Eco", image: "ueco"), preview: "his"),
        Book(title: "A Study In Scarlet", author: Author(name: "Arthur Conan Doyle", image: "adoyl"), preview: "ast"),
        Book(title: "Anioły I Demony", author: Author(name: "Dan Brown", image: "dbrow"), preview: "ani"),
        Book(title: "Biblia Umarłych", author: Author(name: "Tom Knox", image: "tknox"), preview: "bib"),
        Book(title: "Ślepnąc Od Świateł", author: Author(name: "Jakub Żulczyk", image: "jzulc"), preview: "sle"),
        Book(title: "Igrzyska Śmierci", author: Author(name: "Suzanne Collins", image: "scoll"), preview: "igr"),
        Book(title: "Gra O Tron", author: Author(name: "George R.R. Martin", image: "gmart"), preview: "gra"),
        Book(title: "Zabójcze Maszyny", author: Author(name: "Philip Reeve", image: "preev"), preview: "zab")
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
        return books.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "datacell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! BooksTableViewCell

        // Configure the cell...
        cell.titleLabel.text = books[indexPath.row].title
        cell.authorNameLabel.text = books[indexPath.row].author.name
        cell.authorImageImageView.image = UIImage(named: books[indexPath.row].author.image)
        
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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "showBookDetail"){
            if let indexPath = tableView.indexPathForSelectedRow{
                let destinationController = segue.destination as! BookDetailViewController
                destinationController.thisBook = books[indexPath.row]
            }
        }
    }
    

}

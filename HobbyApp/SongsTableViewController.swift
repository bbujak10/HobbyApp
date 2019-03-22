//
//  SongsTableViewController.swift
//  HobbyApp
//
//  Created by Bartosz Bujak on 12/01/2019.
//  Copyright © 2019 Bartosz Bujak. All rights reserved.
//

import UIKit

class SongsTableViewController: UITableViewController {
    var songs = [
        Song(title: "Medicine", artist: "Bring Me The Horizon", album: "amo", year: "2019", cover: "bmthamo", preview: "bmthmedicine"),
        Song(title: "Superhero", artist: "Atreyu", album: "In Our Wake", year: "2018", cover: "atreinou", preview: "atreyusuperhero"),
        Song(title: "1234", artist: "Emigrate", album: "A Million Degrees", year: "2018", cover: "emigamil", preview: "emigrate1234"),
        Song(title: "Wrong Side Of Heaven", artist: "Five Finger Death Punch", album: "Wrong Side Of Heaven And The Righteous Side Of Hell Vol. 1", year: "2013", cover: "ffdpwro1", preview: "ffdpwrong"),
        Song(title: "Anastasia", artist: "Slash feat. Myles Kennedy and The Conspirators", album: "Apocalyptic Love", year: "2012", cover: "slasapoc", preview: "slashanastasia"),
        Song(title: "Hero Of War", artist: "Rise Against", album: "Appeal To Reason", year: "2008", cover: "riseappe", preview: "rahero"),
        Song(title: "Alone In A Room", artist: "Asking Alexandria", album: "Asking Alexandria", year: "2017", cover: "askiaski", preview: "askalone"),
        Song(title: "Zombie", artist: "Bad Wolves", album: "Disobey", year: "2018", cover: "badwdiso", preview: "badzombie"),
        Song(title: "End Of An Empire", artist: "Celdweller", album: "End Of An Empire", year: "2015", cover: "celdendo", preview: "celdend"),
        Song(title: "The Stage", artist: "Avenged Sevenfold", album: "The Stage", year: "2016", cover: "aventhes", preview: "ax7stage"),
        Song(title: "Little Monster", artist: "Royal Blood", album: "Royal Blood", year: "2014", cover: "royaroya", preview: "rblittle"),
        Song(title: "Jenny", artist: "Nothing More", album: "Nothing More", year: "2014", cover: "nothnoth", preview: "nmjenny")
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
        return songs.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "datacell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! SongsTableViewCell
        
        // Configure the cell...
        cell.songTitleLabel.text = songs[indexPath.row].title
        cell.songArtistLabel.text = songs[indexPath.row].artist
        cell.songAlbumYearLabel.text = songs[indexPath.row].album + " · " + songs[indexPath.row].year
        cell.songAlbumCoverImageView.image = UIImage(named: songs[indexPath.row].cover)

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
        if(segue.identifier == "showSongDetail"){
            if let indexPath = tableView.indexPathForSelectedRow{
                let destinationController = segue.destination as! SongDetailViewController
                destinationController.thisSong = songs[indexPath.row]
            }
        }
    }

}

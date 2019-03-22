//
//  MovieDetailViewController.swift
//  HobbyApp
//
//  Created by Bartosz Bujak on 12/01/2019.
//  Copyright © 2019 Bartosz Bujak. All rights reserved.
//

import UIKit
import WebKit

class MovieDetailViewController: UIViewController {
    var thisMovie : Movie?
    
    @IBOutlet weak var wv: WKWebView!
    @IBOutlet var posterImageView : UIImageView!
    @IBOutlet var titleLabel : UILabel!
    @IBOutlet var directorLabel : UILabel!
    @IBOutlet var scriptLabel : UILabel!
    @IBOutlet var budgetLabel : UILabel!
    @IBOutlet var yearLabel : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        navigationItem.largeTitleDisplayMode = .never
        self.navigationItem.title = thisMovie?.title
        
        posterImageView.image = UIImage(named: (thisMovie?.poster)!)
        titleLabel.text = thisMovie?.title
        directorLabel.text = thisMovie?.director
        scriptLabel.text = thisMovie?.script
        budgetLabel.text = thisMovie?.budget
        yearLabel.text = thisMovie?.year
        
        loadYoutube(videoID: thisMovie?.trailer ?? "")
        // Do any additional setup after loading the view.
    }
    
    func loadYoutube(videoID:String) {
        guard
            let youtubeURL = URL(string: "https://www.youtube.com/embed/\(videoID)")
            else { return }
        wv.load( URLRequest(url: youtubeURL) )
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

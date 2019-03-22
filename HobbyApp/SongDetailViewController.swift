//
//  SongDetailViewController.swift
//  HobbyApp
//
//  Created by Bartosz Bujak on 12/01/2019.
//  Copyright © 2019 Bartosz Bujak. All rights reserved.
//

import UIKit
import AVFoundation

class SongDetailViewController: UIViewController {
    var thisSong : Song?
    
    var player = AVAudioPlayer()
    var isPlaying = false
    
    @IBOutlet var albumCoverImageView : UIImageView!
    @IBOutlet var titleLabel : UILabel!
    @IBOutlet var artistLabel : UILabel!
    @IBOutlet var albumLabel : UILabel!
    @IBOutlet var yearLabel : UILabel!
    @IBOutlet var playStopButton : UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.largeTitleDisplayMode = .never
        self.navigationItem.title = thisSong?.title
        
        let path = Bundle.main.path(forResource: thisSong?.preview, ofType: "mp3")!
        let url = URL(fileURLWithPath: path)
        
        do{
            player = try AVAudioPlayer(contentsOf: url)
        } catch{
            print("cant load file")
        }
        
        albumCoverImageView.image = UIImage(named: (thisSong?.cover)!)
        titleLabel.text = thisSong?.title
        artistLabel.text = thisSong?.artist
        albumLabel.text = thisSong?.album
        yearLabel.text = thisSong?.year
        playStopButton.setTitle("▶︎", for: .normal)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func playSound(_ sender : Any){
        if isPlaying{
            player.stop()
            player.currentTime = 0
            isPlaying = false
            playStopButton.setTitle("▶︎", for: .normal)
        }
        else{
            player.play()
            isPlaying = true
            playStopButton.setTitle("■", for: .normal)
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        if isPlaying{
            player.stop()
            player.currentTime = 0
            isPlaying=false
        }
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    

}

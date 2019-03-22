//
//  BookDetailViewController.swift
//  HobbyApp
//
//  Created by Bartosz Bujak on 12/01/2019.
//  Copyright © 2019 Bartosz Bujak. All rights reserved.
//

import UIKit

class BookDetailViewController: UIViewController {
    var thisBook : Book?
    
    @IBOutlet var authorImageImageView: UIImageView!
    @IBOutlet var authorNameLabel: UILabel!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var textText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.largeTitleDisplayMode = .never
        self.navigationItem.title = thisBook?.title

        authorImageImageView.image = UIImage(named: (thisBook?.author.image)!)
        authorNameLabel.text = thisBook?.author.name
        titleLabel.text = thisBook?.title
        textText.text = load(file: thisBook?.preview ?? "")
        
    }
    
    func load(file name:String) -> String {
        print("lsn")
        if let path = Bundle.main.path(forResource: name, ofType: "txt") {
            if let contents = try? String(contentsOfFile: path) {
                return contents
            } else {
                print("Error! - This file doesn't contain any text.")
            }
        } else {
            print("Error! - This file doesn't exist.")
        }
        return ""
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.textText.scrollRangeToVisible(NSMakeRange(0, 0))
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

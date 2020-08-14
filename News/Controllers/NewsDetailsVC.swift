//
//  NewsDetailsVC.swift
//  News
//
//  Created by Mohamed Abd el Aty on 8/13/20.
//  Copyright © 2020 Aty. All rights reserved.
//

import UIKit

class NewsDetailsVC: UIViewController {
    
     var detailsOfNews: Result?
    
    @IBOutlet var sharedBy: UILabel!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var profileLable: UILabel!
    @IBOutlet var imageLabel: UIImageView!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var articlesLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
                    setUp()
    }

    // MARK:  loading data from News fun
    
    func setUp(){
     titleLabel.text = detailsOfNews?.title
     profileLable.text = detailsOfNews?.byline
     dateLabel.text = detailsOfNews?.published_date
     articlesLabel.text = detailsOfNews?.abstract
     sharedBy.text = detailsOfNews?.source
        
    guard let completeLinke = (detailsOfNews?.thumbnail_standard) else { return }
      imageLabel.downloaded(from: completeLinke)
   
    
}
    @IBAction func backButton(_ sender: Any) {
    self.dismiss(animated: true, completion: nil)
    }
    
}

//
//  ViewController.swift
//  News
//
//  Created by Mohamed Abd el Aty on 8/12/20.
//  Copyright © 2020 Aty. All rights reserved.
//

import UIKit


class NewsVC: UIViewController {
    
    var newsTutorial: PageNews?
     
    
    let newsCellIdentifier = "NewsCell"
    @IBOutlet var newsTB: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        
        API.getNews() { (error: Error?, news: PageNews?) in
            
            if error == nil {
                DispatchQueue.main.async {
                    self.newsTutorial = news
                    self.newsTB.reloadData()
                }
                
            } else {
                print("parse error ")
                
            }
            
        }
        
        
        //        newsTB.rowHeight = UITableView.automaticDimension
        
    }
    
    private func setupTableView() {
        let nib = UINib(nibName: newsCellIdentifier, bundle: nil)
        newsTB.register(nib, forCellReuseIdentifier: newsCellIdentifier)
    }
}


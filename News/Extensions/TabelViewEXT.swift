//
//  TabelViewEXT.swift
//  News
//
//  Created by Mohamed Abd el Aty on 8/13/20.
//  Copyright © 2020 Aty. All rights reserved.
//

import Foundation
import UIKit

extension NewsVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsTutorial?.results?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: newsCellIdentifier, for: indexPath) as! NewsCell
        cell.profileName.text = newsTutorial?.results?[indexPath.row].byline
        cell.artLabel.text = newsTutorial?.results?[indexPath.row].title
        cell.dateLabel.text = newsTutorial?.results?[indexPath.row].published_date
        
        cell.profileImage.contentMode = .scaleAspectFill
        if let completeLinke = (newsTutorial?.results?[indexPath.row].thumbnail_standard){
            cell.profileImage.downloaded(from: completeLinke)
        } else {
            print("no image")
        }
        return cell
    }
}

extension NewsVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return newsTB.frame.height/4
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
      let newsDetails = newsTutorial?.results?[indexPath.row]
        let storyBord = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBord.instantiateViewController(withIdentifier:
           "NewsDetailsVC") as! NewsDetailsVC
     vc.modalPresentationStyle = .fullScreen
       vc.modalTransitionStyle = .crossDissolve
       vc.detailsOfNews = newsDetails
       self.present(vc, animated: true, completion: nil)
        
    }
}

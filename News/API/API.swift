//
//  API.swift
//  News
//
//  Created by Mohamed Abd el Aty on 8/13/20.
//  Copyright © 2020 Aty. All rights reserved.
//

import Foundation
import UIKit

class API: NSObject {

    // MARK:  loading jason  func

      class func getNews(completion: @escaping (_ error: Error?,_ news: PageNews?)->Void) {

      let url = URL(string: URLs.main)
                 URLSession.shared.dataTask(with: url!) { (data, response, error) in
                     if error == nil {
                         do {
                  let newsTutorial =  try JSONDecoder().decode(PageNews?.self,from: data!)
                          completion(nil,newsTutorial)
                     } catch {
                       completion(error,nil)
                     print("parse error ")
                             }}}.resume()   }

  }
    




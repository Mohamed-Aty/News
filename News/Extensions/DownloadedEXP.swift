//
//  DownloadedEXP.swift
//  News
//
//  Created by Mohamed Abd el Aty on 8/13/20.
//  Copyright © 2020 Aty. All rights reserved.
//

import Foundation
import UIKit


// MARK:  func for loading image from site and caching it 


extension UIImageView {
func downloaded(from url: URL, contentMode mode: UIView.ContentMode = .scaleToFill) {
    
    contentMode = mode
    URLSession.shared.dataTask(with: url) { data, response, error in
        guard
            let httpURLResponse = response as? HTTPURLResponse, httpURLResponse.statusCode == 200,
            let mimeType = response?.mimeType, mimeType.hasPrefix("image"),
            let data = data, error == nil,
            let image = UIImage(data: data)
            else { return }
        DispatchQueue.main.async() {
            self.image = image
        }
    }.resume()
}
func downloaded(from link: String, contentMode mode: UIView.ContentMode = .scaleToFill) {
    
    guard let url = URL(string: link) else { return }
    downloaded(from: url, contentMode: mode)
}}


//
//  WebService.swift
//  GoodNews
//
//  Created by Muhammat Fandi Mayuso on 1/6/20.
//  Copyright © 2020 Muhammat Fandi Mayuso. All rights reserved.
//

import Foundation

class WebService {
    
    func getArticles(url: URL, completion: @escaping([Any]?) -> (Void)) {
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            } else if let data = data {
                print(data)
            }
        }.resume()
    }
}

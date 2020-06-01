//
//  NewsListTableViewController.swift
//  GoodNews
//
//  Created by Muhammat Fandi Mayuso on 1/6/20.
//  Copyright © 2020 Muhammat Fandi Mayuso. All rights reserved.
//

import UIKit

class NewsListTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
    }
    
    private func setup() {
        navigationController?.navigationBar.prefersLargeTitles = true
        
        let url = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=7340979064c945bcba7384c35bcbef69")!
        
        WebService().getArticles(url: url) { _ in
            
        }
    }
}

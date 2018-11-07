//
//  ArticleDetailViewController.swift
//  BookStore
//
//  Created by Shwe Yi Tun on 11/7/18.
//  Copyright © 2018 Shwe Yi Tun. All rights reserved.
//

import UIKit

class ArticleDetailViewController: UIViewController {
    
    @IBOutlet weak var articleTitle: UILabel!
    @IBOutlet weak var articleImage: UIImageView!
    
    @IBOutlet weak var articleReleasedDate: UILabel!

    @IBOutlet weak var articleDesc: UILabel!
    
    
    @IBAction func backHome(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
    
    var articleData : Article? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let articleData = articleData {
            articleImage.image = UIImage(named: articleData.image)
            articleTitle.text = articleData.title
            articleReleasedDate.text = articleData.releaseddate
            articleDesc.text = articleData.desc
        }
    }

}

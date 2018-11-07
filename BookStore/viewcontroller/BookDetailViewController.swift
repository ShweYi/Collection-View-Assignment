//
//  BookDetailViewController.swift
//  BookStore
//
//  Created by Shwe Yi Tun on 11/7/18.
//  Copyright © 2018 Shwe Yi Tun. All rights reserved.
//

import UIKit

class BookDetailViewController: UIViewController {
    
    @IBOutlet weak var bookTitle: UILabel!
    
    @IBOutlet weak var bookImage: UIImageView!
    @IBOutlet weak var bookAuthor: UILabel!
    
    @IBOutlet weak var bookReleased: UILabel!
    
    @IBOutlet weak var bookDesc: UILabel!
    
    var fromHome = false
    @IBAction func back(_ sender: UIBarButtonItem) {
        if fromHome {
            var mainView: UIStoryboard!
            mainView = UIStoryboard(name: "Main", bundle: nil)
            let viewController = mainView.instantiateViewController(withIdentifier: "ViewController") as! ViewController
            self.present(viewController, animated: true , completion: nil)
        } else {
            self.dismiss(animated: true, completion: nil)
        }
    }
    
    var bookData : Book? = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        if let bookData = bookData {
            bookTitle.text = bookData.title
            bookAuthor.text = bookData.author
            bookReleased.text = bookData.releaseddate
            bookDesc.text = bookData.desc
            bookImage.image = UIImage(named: bookData.image)
        }
    }

}

//
//  AdsViewController.swift
//  BookStore
//
//  Created by Shwe Yi Tun on 11/7/18.
//  Copyright © 2018 Shwe Yi Tun. All rights reserved.
//

import UIKit

class AdsViewController: UIViewController {

    @IBAction func backHome(_ sender: UIBarButtonItem) {
        var mainView: UIStoryboard!
        mainView = UIStoryboard(name: "Main", bundle: nil)
        let viewController = mainView.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        self.present(viewController, animated: true , completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

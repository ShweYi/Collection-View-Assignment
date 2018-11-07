//
//  AdsImageCollectionViewCell.swift
//  BookStore
//
//  Created by Shwe Yi Tun on 11/4/18.
//  Copyright © 2018 Shwe Yi Tun. All rights reserved.
//

import UIKit

class AdsImageCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var adsImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.onClickAds))
        tap.numberOfTapsRequired = 1
        adsImage.isUserInteractionEnabled = true
        adsImage.addGestureRecognizer(tap)
    }
    
    @objc func onClickAds(){
        var mainView: UIStoryboard!
        mainView = UIStoryboard(name: "Main", bundle: nil)
        let navigationController = mainView.instantiateViewController(withIdentifier: "AdsViewController") as! UINavigationController
        self.window!.rootViewController = navigationController
    }

}

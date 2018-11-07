//
//  PopularCollectionViewCell.swift
//  BookStore
//
//  Created by Shwe Yi Tun on 11/4/18.
//  Copyright © 2018 Shwe Yi Tun. All rights reserved.
//

import UIKit

class PopularCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var popularbooktxt: UILabel!
    
    @IBOutlet weak var viewmoretxt: UILabel!
    
    @IBOutlet weak var popularbookCollectionView: UICollectionView!
    
    
    var bookList = DummyUtil.getBookData()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        popularbookCollectionView.delegate = self
        popularbookCollectionView.dataSource = self
        CellRegisterUtil.cellRegister(nibName: "BookCollectionViewCell", collectionView: popularbookCollectionView)
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.onClickViewMore))
        tap.numberOfTapsRequired = 1
        viewmoretxt.isUserInteractionEnabled = true
        viewmoretxt.addGestureRecognizer(tap)
    }
    
    @objc func onClickViewMore(sender:UILabel){
        var mainView: UIStoryboard!
        mainView = UIStoryboard(name: "Main", bundle: nil)
        let navigationController = mainView.instantiateViewController(withIdentifier: "ViewMoreViewController") as! UINavigationController
        self.window!.rootViewController = navigationController

    }

}

extension PopularCollectionViewCell : UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return bookList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BookCollectionViewCell", for: indexPath) as! BookCollectionViewCell
        cell.ivBook.image = UIImage(named: bookList[indexPath.row].image)
        return cell
    }
}

extension PopularCollectionViewCell : UICollectionViewDelegateFlowLayout,UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 90, height: 120)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Book Click \(indexPath.row)")
        var mainView: UIStoryboard!
        mainView = UIStoryboard(name: "Main", bundle: nil)
        let navigationController = mainView.instantiateViewController(withIdentifier: "BookDetailViewController") as! UINavigationController
        let vc = navigationController.viewControllers[0] as! BookDetailViewController
        vc.bookData = bookList[indexPath.row]
        vc.fromHome = true
        self.window!.rootViewController = navigationController
    }
}


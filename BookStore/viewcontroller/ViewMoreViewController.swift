//
//  ViewMoreViewController.swift
//  BookStore
//
//  Created by Shwe Yi Tun on 11/5/18.
//  Copyright © 2018 Shwe Yi Tun. All rights reserved.
//

import UIKit

class ViewMoreViewController: UIViewController {

    var bookList = DummyUtil.getBookData()
    @IBOutlet weak var viewmoreCollectionView: UICollectionView!
    @IBAction func back(_ sender: UIBarButtonItem) {
        var mainView: UIStoryboard!
        mainView = UIStoryboard(name: "Main", bundle: nil)
        let viewController = mainView.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        self.present(viewController, animated: true , completion: nil)

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewmoreCollectionView.dataSource = self
        viewmoreCollectionView.delegate = self
        CellRegisterUtil.cellRegister(nibName: "ViewMoreCollectionViewCell", collectionView: viewmoreCollectionView)
    }

}

extension ViewMoreViewController : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return bookList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ViewMoreCollectionViewCell", for: indexPath) as! ViewMoreCollectionViewCell
        cell.bookImage.image = UIImage(named: bookList[indexPath.row].image)
        return cell
    }
}

extension ViewMoreViewController : UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (self.view.frame.width/2 - 15)
        return CGSize(width: width, height: width * 1.3)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let navigationController = self.storyboard?.instantiateViewController(withIdentifier: "BookDetailViewController") as! UINavigationController
        let vc = navigationController.viewControllers[0] as! BookDetailViewController
        vc.bookData = bookList[indexPath.row]
        vc.fromHome = false
        self.present(navigationController, animated: true, completion: nil)
    }
}

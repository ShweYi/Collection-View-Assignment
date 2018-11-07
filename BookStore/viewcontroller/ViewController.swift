//
//  ViewController.swift
//  BookStore
//
//  Created by Shwe Yi Tun on 11/4/18.
//  Copyright © 2018 Shwe Yi Tun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var articleList = DummyUtil.getArticleData()
//    var layout : UICollectionViewFlowLayout = {
//        let layout = UICollectionViewFlowLayout()
//        let width = UIScreen.main.bounds.size.width
//        layout.estimatedItemSize = CGSize (width: width, height: 10)
//        return layout
//    }()

    @IBOutlet weak var mainCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        mainCollectionView.dataSource = self
        mainCollectionView.delegate = self
        cellRegister(nibName: "AdsImageCollectionViewCell", collectionView: self.mainCollectionView)
        cellRegister(nibName: "PopularCollectionViewCell", collectionView: self.mainCollectionView)
        cellRegister(nibName: "ArticleContentCollectionViewCell", collectionView: self.mainCollectionView)
        //mainCollectionView.collectionViewLayout = layout
    }
    
    func cellRegister(nibName : String, collectionView : UICollectionView){
        CellRegisterUtil.cellRegister(nibName: nibName, collectionView: collectionView)
    }

}

extension ViewController : UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 3
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if (section == 0 || section == 1) {
            return 1
        }
        return articleList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.section == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AdsImageCollectionViewCell", for: indexPath) as! AdsImageCollectionViewCell
            return cell
        }else if indexPath.section == 1 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PopularCollectionViewCell", for: indexPath) as! PopularCollectionViewCell
            return cell
        }else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ArticleContentCollectionViewCell", for: indexPath) as! ArticleContentCollectionViewCell
            cell.articleImage.image = UIImage(named: articleList[indexPath.row].image)
            cell.articleTitle.text = articleList[indexPath.row].title
            cell.articleReleaseDate.text = articleList[indexPath.row].releaseddate

            return cell
        }
    }
    
    
}

extension ViewController : UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.section == 0 {
            return CGSize(width: self.view.frame.width, height: 200)
        }else if indexPath.section == 1 {
            return CGSize(width: self.view.frame.width, height: 180)
        } else {
            return CGSize(width: self.view.frame.width, height: 260)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let navigationController = self.storyboard?.instantiateViewController(withIdentifier: "ArticleDetailViewController") as! UINavigationController
        let vc = navigationController.viewControllers[0] as! ArticleDetailViewController
        vc.articleData = articleList[indexPath.row]
        self.present(navigationController, animated: true, completion: nil)
    }
}

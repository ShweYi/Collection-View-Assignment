//
//  ArticleContentCollectionViewCell.swift
//  BookStore
//
//  Created by Shwe Yi Tun on 11/4/18.
//  Copyright © 2018 Shwe Yi Tun. All rights reserved.
//

import UIKit

class ArticleContentCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var articleImage: UIImageView!
    
    @IBOutlet weak var articleTitle: UILabel!
    
    @IBOutlet weak var articleReleaseDate: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
//    override func preferredLayoutAttributesFitting(_ layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes {
//        setNeedsLayout()
//        layoutIfNeeded()
//        let size = contentView.systemLayoutSizeFitting(layoutAttributes.size)
//        var frame = layoutAttributes.frame
//        frame.size.height = ceil(size.height)
//        layoutAttributes.frame = frame
//
//        return layoutAttributes
//    }
//    lazy var width : NSLayoutConstraint = {
//       let width = contentView.widthAnchor.constraint(equalToConstant: bounds.size.width)
//        width.isActive = true
//        return width
//    }()
//
//
//
//    override func systemLayoutSizeFitting(_ targetSize: CGSize) -> CGSize {
//        width.constant = bounds.size.width
//        return contentView.systemLayoutSizeFitting(CGSize(width: targetSize.width, height: 1))
//    }

}

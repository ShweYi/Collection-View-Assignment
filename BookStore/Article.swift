//
//  Article.swift
//  BookStore
//
//  Created by Shwe Yi Tun on 11/4/18.
//  Copyright © 2018 Shwe Yi Tun. All rights reserved.
//

import UIKit

class Article: NSObject {
    var title : String = ""
    var image : String = ""
    var releaseddate : String = ""
    var desc : String = ""
    init(image : String,title : String,desc : String,releaseddate : String) {
        self.image = image
        self.title = title
        self.desc = desc
        self.releaseddate = releaseddate
    }
}

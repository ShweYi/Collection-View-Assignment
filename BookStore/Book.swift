//
//  Book.swift
//  BookStore
//
//  Created by Shwe Yi Tun on 11/7/18.
//  Copyright © 2018 Shwe Yi Tun. All rights reserved.
//

import UIKit

class Book: NSObject {
    var title : String = ""
    var author : String = ""
    var releaseddate : String = ""
    var image : String = ""
    var desc : String = ""
    init(title:String,author:String,releaseddate:String,image:String,desc:String) {
        self.title = title
        self.author = author
        self.releaseddate = releaseddate
        self.image = image
        self.desc = desc
    }
}

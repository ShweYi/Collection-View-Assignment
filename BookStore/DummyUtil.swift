//
//  DummyUtil.swift
//  BookStore
//
//  Created by Shwe Yi Tun on 11/4/18.
//  Copyright © 2018 Shwe Yi Tun. All rights reserved.
//

import Foundation
class DummyUtil {
    static func getArticleData () -> [Article] {
        var articleArr : [Article] = []
        if (DummyData.article_image.count == DummyData.article_date.count &&  DummyData.article_image.count == DummyData.article_title.count && DummyData.article_image.count == DummyData.article_desc.count){
            for i in 0...DummyData.article_image.count-1 {
                let article =  Article(image: DummyData.article_image[i],title: DummyData.article_title[i],desc: DummyData.article_desc[i],releaseddate: DummyData.article_date[i])
                articleArr.append(article)
            }
        }
        return articleArr
    }
    
    static func getBookData () -> [Book] {
        var bookArr : [Book] = []
        if (DummyData.book_image.count == DummyData.book_desc.count && DummyData.book_image.count == DummyData.book_title.count && DummyData.book_image.count == DummyData.book_author.count && DummyData.book_image.count == DummyData.book_released.count){
            for i in 0...DummyData.book_image.count-1 {
                let book = Book(title: DummyData.book_title[i], author: DummyData.book_author[i], releaseddate: DummyData.book_released[i], image: DummyData.book_image[i], desc: DummyData.book_desc[i])
                bookArr.append(book)
            }
        }
        return bookArr
    }
}

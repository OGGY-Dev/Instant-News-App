//
//  NewsViewModel.swift
//  Instant News App
//
//  Created by Oğulcan DEMİRTAŞ on 15.09.2021.
//

import Foundation

struct NewsTableViewModel {
    
    let newsList : [News]
    
    func numberOfRowsInSection() -> Int {
        return self.newsList.count
    }
    
    func newsAtIndexPath ( index: Int) -> SingleNewsModel{
        let news = self.newsList[index]
        return SingleNewsModel(news: news)      //cityList içinde index olarak denk geldiği yer neresiyle news olarak ata yani dizi'den tekile çevirdik
    }
}



struct SingleNewsModel {
    
    let news : News
    
    var userName : String {
        return self.news.userName
    }
    var newsHeadline : String {
        return self.news.newsHeadline
    }
    var newsDetail : String {
        return self.news.newsDetail
    }
    var city : String {
        return self.news.city
    }
    var longitude : String {
        return self.news.longitude
    }
    var latitude : String {
        return self.news.latitude
    }
}

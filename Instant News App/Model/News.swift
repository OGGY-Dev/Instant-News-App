//
//  News.swift
//  Instant News App
//
//  Created by Oğulcan DEMİRTAŞ on 15.09.2021.
//

import Foundation

struct News : Decodable {
    
    let userName : String
    let newsHeadline : String
    let newsDetail : String
    let city : String
    let latitude : String
    let longitude : String
}






//"id": 1,
//   "userName": "user1",
//   "newsHeadline": "Başkan halkla buluştu",
//   "newsDetail":"Test123Test123Test123Test123Test123Test123Test123Test123Test123",
//   "city":"Mersin",
//   "latitude":"36.7793964834202",
//   "longitude":"34.590948033771106"

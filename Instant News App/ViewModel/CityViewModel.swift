//
//  CityViewModel.swift
//  Instant News App
//
//  Created by Oğulcan DEMİRTAŞ on 12.09.2021.
//

import Foundation
struct CityTableViewModel {
    
    let cityList : [City]
    
    func numberOfRowsInSection() -> Int {
        return self.cityList.count
    }
    
    func cityAtIndexPath ( index: Int) -> SingleCityModel{
        let city = self.cityList[index]
        return SingleCityModel(city: city)      //cityList içinde index olarak denk geldiği yer neresiyle news olarak ata yani dizi'den tekile çevirdik
    }
}



struct SingleCityModel {
    
    let city : City
    
    var plateNumber : String {
        return self.city.plateNumber
        
    }
    var cityName : String {
        return self.city.cityName
    }
}

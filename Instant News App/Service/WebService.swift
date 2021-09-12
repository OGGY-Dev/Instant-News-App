
import Foundation

class WebService {
    
    func downloadCity(url: URL, completion: @escaping  ([City]?) -> () ) { //haberi url'den indirmek için fonksiyn yazdık bu fonksiyonun tamamlama bloğunu da News struct'ı ile yapıcaz. yani gelen url'deki veriler News.swift dosyası ile tanımlanacak
        
         
        URLSession.shared.dataTask(with: url) { data, response, error in //veriyi url'den çağırıyoruz
            
            if let error = error {
                print(error.localizedDescription) //eğer hata olursa veritabanından gelen hatayı göstercek
                completion(nil) //eğer hata mesajı varsa bir şey döndüremeyecek demek
            
            }else if let data = data {
                
              let cityArray = try? JSONDecoder().decode([City].self, from: data)
                
                if let cityArray = cityArray {
                    completion(cityArray)
                }
            }
            
        }.resume() //urlsession açınca, kapamasını yapan süslü paranteze resume() yani devam ettirmesini söylüyoruz
        
    }
    
    
}

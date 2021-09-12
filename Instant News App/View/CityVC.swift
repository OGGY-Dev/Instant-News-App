//
//  CityVC.swift
//  Instant News App
//
//  Created by Oğulcan DEMİRTAŞ on 12.09.2021.
//

import UIKit

class CityVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    private var cityTableViewModel : CityTableViewModel!
        
    @IBOutlet weak var tableView: UITableView!
    
    

    @IBOutlet weak var plateNumberLabel: UILabel!
    
    @IBOutlet weak var cityLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tableView.delegate = self
        
        tableView.dataSource = self
        
        getData()

    }
    
    
    func getData() {
        
        let url = URL(string: "https://gist.githubusercontent.com/serong/9b25594a7b9d85d3c7f7/raw/9904724fdf669ad68c07ab79af84d3a881ff8859/iller.json")
        WebService().downloadCity(url: url!) { city in
            if let city = city {
                self.cityTableViewModel = CityTableViewModel(cityList: city)
                
                DispatchQueue.main.async {     //veri yenileme asenkron bir biçimde tableView üzerinde çalıştırılacak demek
                    self.tableView.reloadData()
                }
                
            }
        }
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cityTableViewModel == nil ? 0 : self.cityTableViewModel.numberOfRowsInSection()   //veriyi çekemeyip nil gelirse 0 yap gelmezse numberofrowsinsection yap demek
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CityCell
        let singleViewModel = self.cityTableViewModel.cityAtIndexPath(index: indexPath.row)
        cell.cityLabel.text = singleViewModel.cityName
        cell.plateNumberLabel.text = singleViewModel.plateNumber
        return cell
        
    
    }
    
    }
        
    
    



//
//  FeedVC.swift
//  Instant News App
//
//  Created by Oğulcan DEMİRTAŞ on 12.09.2021.
//

import UIKit

class FeedVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    private var newsTableViewModel : NewsTableViewModel!
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var citySelectLabel: UILabel!
    @IBOutlet weak var logoImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
       getData()
    }
    
    func getData() {
        
        let url = URL(string: "https://gist.githubusercontent.com/OGGY-Dev/66f4bc42e1d09fe7a333c3d13d098f1c/raw/5609fcf6eb1143ad78551c40d6c9cd556d533c0b/newsSample.json")
        WebService().downloadNews(url: url!) { news in
            if let news = news {
                self.newsTableViewModel = NewsTableViewModel(newsList: news)
                
                DispatchQueue.main.async {     //veri yenileme asenkron bir biçimde tableView üzerinde çalıştırılacak demek
                    self.tableView.reloadData()
                }
                
            }
        }
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsTableViewModel == nil ? 0 : self.newsTableViewModel.numberOfRowsInSection()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
        let singleViewModel = self.newsTableViewModel.newsAtIndexPath(index: indexPath.row)
        cell.userName.text = singleViewModel.userName
        
        cell.newsDetailLabel.text = singleViewModel.newsDetail
        return cell
    }



}

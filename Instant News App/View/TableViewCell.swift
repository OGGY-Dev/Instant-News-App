//
//  TableViewCell.swift
//  Instant News App
//
//  Created by Oğulcan DEMİRTAŞ on 12.09.2021.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var newsDetailLabel: UILabel!
    @IBOutlet weak var newsImage: UIImageView!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}

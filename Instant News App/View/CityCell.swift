//
//  CityCell.swift
//  Instant News App
//
//  Created by Oğulcan DEMİRTAŞ on 12.09.2021.
//

import UIKit

class CityCell: UITableViewCell {

    @IBOutlet weak var plateNumberLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

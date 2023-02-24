//
//  ListRestaurantTableViewCell.swift
//  restaurantApp
//
//  Created by Phincon on 22/02/23.
//

import UIKit

class ListRestaurantTableViewCell: UITableViewCell {
    
    static let identifier = "listRestaurantCell"

    @IBOutlet weak var priceRestaurant: UILabel!
    @IBOutlet weak var descRestaurant: UILabel!
    @IBOutlet weak var restaurantName: UILabel!
    @IBOutlet weak var imageRestaurant: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

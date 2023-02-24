//
//  AboutRestaurantTableViewCell.swift
//  restaurantApp
//
//  Created by Phincon on 23/02/23.
//

import UIKit

class AboutRestaurantTableViewCell: UITableViewCell {
    
    @IBOutlet weak var descLabel: UILabel!
    
    static let identifier = "aboutRestaurantCell"
    
    @IBOutlet weak var aboutLabel: UILabel!
//    @IBOutlet weak var menuTabel: UITableView!
    @IBOutlet weak var orderLabel: UILabel!
    @IBOutlet weak var imageRestaurant: UIImageView!
    @IBOutlet weak var timeRestaurant: UILabel!
    @IBOutlet weak var restaurantAdress: UILabel!
    @IBOutlet weak var aboutRestaurant: UILabel!
    @IBOutlet weak var sectionName: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

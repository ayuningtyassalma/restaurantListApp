//
//  placeCell.swift
//  restaurantApp
//
//  Created by Phincon on 22/02/23.
//

import UIKit

class placeCell: UITableViewCell {
    
    static let  identifier = "listOfPlaceCell"

    @IBOutlet weak var buttonView: UIButton!
    @IBOutlet weak var listPlaceRestauant: UILabel!
    @IBOutlet weak var iconView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
//    
//    func setUpTableView(){
//        let listPlaceRestaurantNib = UINib(nibName: "placeCell", bundle: nil)
//        listOfPlaceTableView.register
//    }
            

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

//
//  MenuOrderCell.swift
//  restaurantApp
//
//  Created by Phincon on 23/02/23.
//

import UIKit

class MenuOrderCell: UITableViewCell {

    
    static let identifier = "orderCell"
    @IBOutlet weak var foodMenu: UILabel!{
        didSet{
            foodMenu.text = "Bebek bakar"
            }
        
    }
    
    
    @IBOutlet weak var priceMenu: UILabel!{
        didSet{
            priceMenu.text = "Rp 20000"
        }
    }
        
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

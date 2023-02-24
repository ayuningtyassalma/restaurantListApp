//
//  AboutRestaurantStruct.swift
//  restaurantApp
//
//  Created by Phincon on 23/02/23.
//

import Foundation

struct AboutRestaurant {
    var restaurantName : String
    var section : String
    var restaurantAdress : String
    var time : String
    var restaurantImg  : String
    var order : String
    var about : String
    var moreAbout : String
    var menus : [Menu]

}

struct Menu {
    var food : String
    var price: Int
}

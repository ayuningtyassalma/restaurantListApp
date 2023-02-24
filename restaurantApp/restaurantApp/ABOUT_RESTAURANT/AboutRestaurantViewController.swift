//
//  AboutRestaurantViewController.swift
//  restaurantApp
//
//  Created by Phincon on 23/02/23.
//

import UIKit

class AboutRestaurantViewController: UIViewController {
    
    
    @IBOutlet weak var aboutRestaurantTableView: UITableView!
    
    var aboutRestaurant : [AboutRestaurant] = [
        AboutRestaurant(
            restaurantName: "Ayam Bakar bu Ranti",
            section: "Raval",
            restaurantAdress: "Jl Permata", time: "Monday - Friday : 09. 00 - 17.00",
            restaurantImg: "image",
            order: "Order",
            about: "Testx",
            moreAbout: "Gringa started life out as a Food truck, one of the first in Barcelona, a blue Citroen called Eureka Street Food. Run by Priscilla, a native Californian, and Gascon. After five years, they acquired a new partner, Juan and found their location in the Raval.  A barrio in flux with many faces: principally a migrant neighborhood, with investment funds buying up entire buildings and leaving them empty – useful for ‘drug flats’. Things are changing, Barcelona is booming and El Raval and its attractive rents are becoming a real contender.",
            menus:
                [
                    Menu(food: " Bebek Bakar", price: 20),
                    Menu(food: "Ayam Bakae", price: 25),
                    Menu(food: "Pecel Lele", price: 14)
                ]
        )
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        moreAboutRestaurant()
        
    }
    
    func moreAboutRestaurant(){
        let aboutNib_ = UINib(nibName: "AboutRestaurantTableViewCell", bundle: nil)
        let orderNib = UINib(nibName: "MenuOrderCell", bundle: nil)
        let moreAboutNib = UINib(nibName: "MoreAbouTableCell", bundle: nil)
        
        //dari static let identifier
        aboutRestaurantTableView.register(aboutNib_, forCellReuseIdentifier: "aboutRestaurantCell")
        
        aboutRestaurantTableView.register(orderNib, forCellReuseIdentifier: "orderCell")
        
        aboutRestaurantTableView.register(moreAboutNib, forCellReuseIdentifier: "moreAboutCell")
        
        
        aboutRestaurantTableView.delegate = self
        aboutRestaurantTableView.dataSource = self
        
        
    }
    
    
}
extension AboutRestaurantViewController : UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 1
        case 1:
            return 1
        case 2:
            return 1
        default:
            return 0
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //dari storyID. (tapi kalo mau bikin storyID, di click dlu buletan view controller di atas hp nya yg di file main storybord)
        
        
        switch indexPath.section {
        case 0:
            guard let cell = aboutRestaurantTableView.dequeueReusableCell(withIdentifier: "aboutRestaurantCell", for: indexPath) as? AboutRestaurantTableViewCell else{return UITableViewCell()}
            
            cell.imageRestaurant.image = UIImage(named: aboutRestaurant[indexPath.row].restaurantImg)
            
            cell.timeRestaurant.text = aboutRestaurant[indexPath.row].time
            
            cell.restaurantAdress.text = aboutRestaurant[indexPath.row].restaurantAdress
//            cell.descLabel.text = aboutRestaurant[indexPath.row].moreAbout
            cell.sectionName.setTitle(aboutRestaurant[indexPath.row].section, for: .normal)
            return cell
        case 1:
            guard let cell = aboutRestaurantTableView.dequeueReusableCell(withIdentifier: "orderCell", for: indexPath) as? MenuOrderCell else{return UITableViewCell()}
            cell.foodMenu.text = "Bebek Bakar"
            cell.priceMenu.text = "Rp 20.000"
            return cell
            
        case 2 :
            guard let cell = aboutRestaurantTableView.dequeueReusableCell(withIdentifier: "moreAboutCell", for: indexPath) as? MoreAbouTableCell else {return UITableViewCell()}

            cell.aboutLabel.text = "About"
            cell.caption.text = "Gringa started life out as a Food truck, one of the first in Barcelona, a blue Citroen called Eureka Street Food. Run by Priscilla, a native Californian, and Gascon. After five years, they acquired a new partner, Juan and found their location in the Raval.  A barrio in flux with many faces: principally a migrant neighborhood, with investment funds buying up entire buildings and leaving them empty – useful for ‘drug flats’. Things are changing, Barcelona is booming and El Raval and its attractive rents are becoming a real contender."
//            let cell = aboutRestaurantTableView.dequeueReusableCell(withIdentifier: "moreAboutCell", for: indexPath)
            return cell
        default:
            return UITableViewCell()
            
            
        }
        
        
    }
}





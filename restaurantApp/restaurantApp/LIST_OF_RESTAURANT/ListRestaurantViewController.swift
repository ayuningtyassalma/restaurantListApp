//
//  ListRestaurantViewController.swift
//  restaurantApp
//
//  Created by Phincon on 22/02/23.
//

import UIKit

class ListRestaurantViewController: UIViewController {
        
    //restaurantList ibarat ngambil template/data restoran
    var restaurantList : [Restaurant] = [
        Restaurant(tittle: "Bebek bakar Bu Ranti", desc: "the best grilled chicken in Tangerang", price: 20, adress: "JL. Permaata", img: "ayamBakar"),
        
        Restaurant(tittle: "Seblak peudesss banget!", desc: "Hot Spicy and best seller", price: 15, adress: "jl Kartini", img: "seblak"),
        
        Restaurant(tittle: "Pempek Khas palembang", desc: "Pempek asli Palembang", price: 12, adress: "jl Iskandar muda", img: "pempek")
    ]
    
    
    
    //
    //    var satu : Restaurant = Restaurant(tittle: "Ketoprak", desc: "enak banget", price: 10, adress: "jl pencari cinta", img: "")
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        setUpTableView()
    }
    @IBOutlet weak var listRestaurantTableView: UITableView!
    
    func setUpTableView(){
        let listRestaurantNib = UINib(nibName: "ListRestaurantTableViewCell", bundle: nil)
        listRestaurantTableView.register(listRestaurantNib, forCellReuseIdentifier: "listRestaurantCell")
        listRestaurantTableView.delegate = self
        listRestaurantTableView.dataSource = self
        
        
        
    }
}

extension ListRestaurantViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantList.count
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell =  listRestaurantTableView.dequeueReusableCell(withIdentifier: "listRestaurantCell", for: indexPath) as? ListRestaurantTableViewCell  else { return UITableViewCell() }
        
        
        /// ambil akses dari cell
        cell.descRestaurant.text = restaurantList[indexPath.row].desc
        cell.restaurantName.text = restaurantList[indexPath.row].tittle
        cell.priceRestaurant.text = "Rp \(restaurantList[indexPath.row].price)"
        cell.imageRestaurant.image = UIImage(named: restaurantList [indexPath.row].img )

        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        if let viewMoreAbout = storyboard.instantiateViewController(identifier: "aboutViewController") as? AboutRestaurantViewController{
            navigationController?.pushViewController(viewMoreAbout, animated: true)
        }
    }
    
    
    
}

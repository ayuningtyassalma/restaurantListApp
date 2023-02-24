//
//  ViewController.swift
//  restaurantApp
//
//  Created by Phincon on 22/02/23.
//

import UIKit

//how to build an app with non-programatically
// 1. we have to make table view cell and choose xib
// 2. set all constraints and if necessarily, set the widht/height. dont forget to erase double constraints
// 3. if we done, try to make IBOUTLET with pull the lines into cell.file(UITableViewCell file) then make identifier to push into view contoller file and regist it
// 4. don't forget to make relation UITable in main storyboard into IBOulert in view controller
// 5. create a function to set up table view


class PlaceViewController: UIViewController {
    
    
    var listPlace = ["Tangerang", "Jakarta", "Bogor", "Depok", "Bekasi"]
    var listButton = ["25 places", "10 places", "13 places", "9 places", "21 places"]
    
    // make relation UITABLE View from main.storyboard
    @IBOutlet weak var listOfPlaceTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpTable()
    }
    
    // set up table view
    
    func setUpTable(){
        let listPlaceNib = UINib(nibName: "placeCell", bundle: nil)
        
        
        //regist  identifier
        listOfPlaceTableView.register(listPlaceNib, forCellReuseIdentifier: "listOfPlaceCell")
        
        
        listOfPlaceTableView.delegate = self
        listOfPlaceTableView.dataSource = self
    }
}

extension PlaceViewController : UITableViewDelegate, UITableViewDataSource{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listPlace.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        guard let cell = listOfPlaceTableView.dequeueReusableCell(withIdentifier: "listOfPlaceCell", for: indexPath) as? placeCell else{
//            return UITableViewCell()
//            
//           return cell
        
        
        // guard cel itu fungsinya biar mencegah error misal (dibawh ini)
        //
        guard let cell = listOfPlaceTableView.dequeueReusableCell(withIdentifier: "listOfPlaceCell", for: indexPath) as? placeCell  else { return UITableViewCell()}
        
        cell.listPlaceRestauant.text = listPlace[indexPath.row]
        cell.buttonView.setTitle(listButton[indexPath.row], for: .normal)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        // identifier disni maksudnya buat nampilin list dari si rstorannya.
        if let viewList = storyboard.instantiateViewController(identifier: "ListRestaurantController") as? ListRestaurantViewController{
            navigationController?.pushViewController(viewList, animated: true)
            
            //list restaurantview di casting(as) biar dipush sama navigation controller biar msuk ke halmamannya si list restoran
        }
    }
}



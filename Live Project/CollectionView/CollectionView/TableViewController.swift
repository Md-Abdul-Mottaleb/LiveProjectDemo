//
//  TableViewController.swift
//  CollectionView
//
//  Created by MacBook Pro on 1/8/21.
//

import UIKit

class TableViewController: UIViewController , UITableViewDelegate, UITableViewDataSource{
 
    
    
    var Restaurant_Images = [UIImage(named: "Restaurant_Image"),
                   UIImage(named: "Restaurant_Image"),
                   UIImage(named: "Restaurant_Image"),
                   UIImage(named: "Restaurant_Image"),
                   UIImage(named: "Restaurant_Image"),
                   UIImage(named: "Restaurant_Image"),
                   UIImage(named: "Restaurant_Image"),
                   UIImage(named: "Restaurant_Image"),
                   UIImage(named: "Restaurant_Image")
        
                   ]
    
    var Names = ["Asado","Singapore","Las VEgas","OMalleys","Military owned","Asado","Asado","Asado","Asado"]
    
    var CountPlace = ["210 Places","117 Places","218 Places","94 Places","201 Places","201 Places","210 Places","210 Places","210 Places",]

    @IBOutlet weak var TableViewOne: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.TableViewOne.delegate = self
        self.TableViewOne.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Restaurant_Images.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let sell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        sell.imageLabel.image = Restaurant_Images[indexPath.row]
        sell.titleLabel.text = Names[indexPath.row]
        sell.countLabel.text = CountPlace[indexPath.row]
        
       
        
        return sell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }

    
    

}

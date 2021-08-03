//
//  ViewController.swift
//  CollectionView
//
//  Created by MacBook Pro on 30/7/21.
//

import UIKit

class CollectionViewController: UIViewController , UICollectionViewDelegate, UICollectionViewDataSource {
   
    @IBOutlet weak var titleLabelOutlet: UILabel!
    
    @IBOutlet weak var CollectionViewShown: UICollectionView!
    
    var Array = ["24-hours places+  ","Authentic Places+  ","Bakeris+  ","Bakeris+  ","BBQ buffet+  ","BBQ pork+  ","Bear garens+  ","Belgian food+  ","Burgers+  ","Cafe+  ","Chipininhas+  ","Casual+  ","Champagne+  ","Chorizo+  ","Carrasco+  ","24-hours places+  ","Authentic Places+  ","Bakeris+  ","Bakeris+  ","BBQ buffet+  ","BBQ pork+  ","Bear garens+  ","Belgian food+  ","Burgers+  ","Cafe+  ","Chipininhas+  ","Casual+  ","Champagne+  ","Chorizo+  ","Carrasco+  ","24-hours places+  ","Authentic Places+  ","Bakeris+  ","Bakeris+  ","BBQ buffet+  ","BBQ pork+  ","Bear garens+  ","Belgian food+  ","Burgers+  ","Cafe+  ","Chipininhas+  ","Casual+  ","Champagne+  ","Chorizo+  ","Carrasco+  "]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabelOutlet.layer.borderWidth = 1
        titleLabelOutlet.layer.borderColor = UIColor.white.cgColor
        
        self.CollectionViewShown.dataSource = self
        self.CollectionViewShown.delegate = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Array.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        cell.labelForCell.text = Array[indexPath.row]
        
        cell.labelForCell.layer.borderWidth = 1
        
        cell.labelForCell.layer.borderColor = UIColor.blue.cgColor
        
        cell.labelForCell.layer.cornerRadius = cell.labelForCell.frame.height / 25
        cell.labelForCell.layer.cornerRadius = cell.labelForCell.frame.width / 50
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            //print("Selected Cell: \(indexPath.row)")
            let cell = collectionView.cellForItem(at: indexPath) as! CollectionViewCell
        
        cell.labelForCell.backgroundColor = UIColor.blue
            
        }
    

}

//import UIKit

extension UIColor {
    
    static var bhNavyBlue: UIColor? {
        return UIColor(named: "004AAD")
    }
    
    static var bhFadeWhite: UIColor? {
        return UIColor(named: "004AAD")
    }

    static func rgb(_ red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
    }
    
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    convenience init(rgb: Int) {
        self.init(
            red: (rgb >> 16) & 0xFF,
            green: (rgb >> 8) & 0xFF,
            blue: rgb & 0xFF
        )
    }
    
    convenience init?(hexString: String) {
        var chars = Array(hexString.hasPrefix("#") ? hexString.dropFirst() : hexString[...])
        switch chars.count {
        case 3: chars = chars.flatMap { [$0, $0] }; fallthrough
        case 6: chars = ["F","F"] + chars
        case 8: break
        default: return nil
        }
        self.init(red: .init(strtoul(String(chars[2...3]), nil, 16)) / 255,
                  green: .init(strtoul(String(chars[4...5]), nil, 16)) / 255,
                  blue: .init(strtoul(String(chars[6...7]), nil, 16)) / 255,
                  alpha: .init(strtoul(String(chars[0...1]), nil, 16)) / 255)
    }
}


@IBDesignable public class titleLabelOutlet : UILabel{
    @IBInspectable var topinset:CGFloat = 0
    @IBInspectable var bottominset : CGFloat = 0
    @IBInspectable var leftinset : CGFloat = 0
    @IBInspectable var rightinset : CGFloat = 0
    public override func drawText(in rect: CGRect) {
        let insets = UIEdgeInsets.init(top: topinset, left: leftinset, bottom: bottominset, right: rightinset)
        super.drawText(in: rect.inset(by: insets))
            }
}



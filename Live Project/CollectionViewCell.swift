//
//  CollectionViewCell.swift
//  CollectionView
//
//  Created by MacBook Pro on 30/7/21.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var labelForCell: UILabel!
    
    
    
}

@IBDesignable public class paddlinglabel : UILabel{
    @IBInspectable var topinset:CGFloat = 0
    @IBInspectable var bottominset : CGFloat = 0
    @IBInspectable var leftinset : CGFloat = 0
    @IBInspectable var rightinset : CGFloat = 0
    public override func drawText(in rect: CGRect) {
        let insets = UIEdgeInsets.init(top: topinset, left: leftinset, bottom: bottominset, right: rightinset)
        super.drawText(in: rect.inset(by: insets))
            }
}

//
//  TableViewCell.swift
//  CollectionView
//
//  Created by MacBook Pro on 1/8/21.
//

import UIKit

class TableViewCell: UITableViewCell {

    
    @IBOutlet weak var imageLabel: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var countLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

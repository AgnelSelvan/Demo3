//
//  ProductCell.swift
//  AgnelDemo3
//
//  Created by Neosoft on 23/11/21.
//

import UIKit

class ProductCell: UITableViewCell {

    @IBOutlet weak var productImg: UIImageView!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

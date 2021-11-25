//
//  ProductCollectionViewCell.swift
//  AgnelDemo3
//
//  Created by Neosoft on 23/11/21.
//

import UIKit

class ProductCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var productImg: UIImageView!
    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}

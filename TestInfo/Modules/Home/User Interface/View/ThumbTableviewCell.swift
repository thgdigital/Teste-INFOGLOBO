//
//  ThumbTableviewCell.swift
//  TestInfo
//
//  Created by Thiago Santos on 28/09/2018.
//  Copyright © 2018 Thiago Santos. All rights reserved.
//

import UIKit
import SDWebImage


class ThumbTableviewCell: TableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var categoryLabel: UILabel!
    
    @IBOutlet weak var thumbImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setup(display: FeatureDisplay){
        titleLabel.text = display.title
        categoryLabel.text = display.type
        thumbImageView.sd_setImage(with: URL(string: display.image), placeholderImage: UIImage(named: "placeholder.png"))

    }
    
}

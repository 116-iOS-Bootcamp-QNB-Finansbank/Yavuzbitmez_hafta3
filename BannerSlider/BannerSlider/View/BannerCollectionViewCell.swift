//
//  BannerCollectionViewCell.swift
//  BannerSlider
//
//  Created by Yavuz Selim Bitmez on 20.09.2021.
//

import UIKit

class BannerCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var title: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configure(data:News){
        image.image = UIImage(named: data.image!)
        title.text = data.title
    }
}

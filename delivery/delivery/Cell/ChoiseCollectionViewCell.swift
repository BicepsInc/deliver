//
//  ChoiseCollectionViewCell.swift
//  delivery
//
//  Created by Roman Dvoritskiy on 07.11.2019.
//  Copyright © 2019 Roman Dvoritskiy. All rights reserved.
//

import UIKit

class ChoiseCollectionViewCell: UICollectionViewCell {
    var menuNamesItemImage:UIImage = UIImage()
     var nameMenuItems:String = ""
    @IBOutlet var image: UIImageView!
    @IBOutlet var name: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        image.image = menuNamesItemImage
        name.text = nameMenuItems
        // Initialization code
    }

}

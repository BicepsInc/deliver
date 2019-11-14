//
//  TableItemViewCell.swift
//  delivery
//
//  Created by Roman Dvoritskiy on 13.11.2019.
//  Copyright © 2019 Roman Dvoritskiy. All rights reserved.
//

import UIKit

class TableItemViewCell: UITableViewCell {
    @IBOutlet weak var nameItems: UILabel!
    @IBOutlet weak var priceItems: UILabel!
    var priceTotal : Int = 0
    var elements : Int = 0
    @IBAction func addButton(_ sender: Any) {
        addItems()
        textFieldItems.text = String(elements)
        priceItems.text = String(priceTotal)

    }
    @IBAction func deleteButton(_ sender: Any) {
        if elements <= 0 {
            textFieldItems.text = "0"
        } else {
            deleteItems()
            textFieldItems.text = String(elements)
            priceItems.text = String(priceTotal)
        }
        
    }
    @IBOutlet weak var textFieldItems: UITextField!
    func addItems() {
        elements += 1
        priceTotal += 15
    }
    func deleteItems() {
          elements -= 1
        priceTotal -= 15
      }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

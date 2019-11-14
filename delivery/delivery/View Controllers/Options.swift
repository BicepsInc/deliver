//
//  Options.swift
//  delivery
//
//  Created by Roman Dvoritskiy on 13.11.2019.
//  Copyright © 2019 Roman Dvoritskiy. All rights reserved.
//

import UIKit

class OptionViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var total : Int = 0
    @IBOutlet weak var price: UILabel!
    var names = ["Додатковий сир", "Додатковий бекон", "Додаткові овочі", "Додаткова ковбаса"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableItemViewCell", for: indexPath) as! TableItemViewCell
        price.text = cell.priceItems.text
        cell.nameItems.text = names [indexPath.row]
        return cell
    }
    

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var tableItems: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableItems.delegate = self
        tableItems.dataSource = self
        tableItems.register(UINib(nibName: "TableItemViewCell", bundle: nil), forCellReuseIdentifier: "TableItemViewCell")

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

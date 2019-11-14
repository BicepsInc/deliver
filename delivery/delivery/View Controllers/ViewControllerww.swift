//
//  ViewControllerww.swift
//  delivery
//
//  Created by Roman Dvoritskiy on 14.11.2019.
//  Copyright © 2019 Roman Dvoritskiy. All rights reserved.
//

import UIKit

class ViewControllerww: UIViewController {

    @IBOutlet weak var rrrr: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       let a = rrrr.frame.size.width
        rrrr.layer.backgroundColor = .init(srgbRed: 22, green: 22, blue: 22, alpha: 22)
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

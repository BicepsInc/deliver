//
//  ViewController.swift
//  delivery
//
//  Created by Roman Dvoritskiy on 29.10.2019.
//  Copyright © 2019 Roman Dvoritskiy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func start(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "OrderController") as! OrderController
        let navigationController = UINavigationController(rootViewController: vc)
        navigationController.modalPresentationStyle = .fullScreen
        self.present(navigationController, animated: true, completion: nil)

    }
    @IBAction func registration(_ sender: Any) {
    }
    @IBAction func menu(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }


}


//
//  OrderController.swift
//  delivery
//
//  Created by Roman Dvoritskiy on 31.10.2019.
//  Copyright © 2019 Roman Dvoritskiy. All rights reserved.
//

import UIKit

class OrderController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    var ima: Array<UIImage> = [UIImage(named: "pizza-1")!, UIImage(named: "drinks-1")!, UIImage(named: "dfg")!, UIImage(named: "www")!]
    var names = ["Pizza", "Drinks", "Sous", "Deserts"]
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collection.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        cell.names.text = names [indexPath.row]
        
        
        cell.iamge.image = ima [indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "Menu") as! Menu
        vc.pizzas = pizzas
        self.present(vc, animated: true, completion: nil)
    }
    @IBOutlet weak var collection: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = true
        collection.delegate = self
        collection.dataSource = self
        collection.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCell")
        
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

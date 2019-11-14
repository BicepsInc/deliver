//
//  Menu.swift
//  delivery
//
//  Created by Roman Dvoritskiy on 07.11.2019.
//  Copyright © 2019 Roman Dvoritskiy. All rights reserved.
//

import UIKit

class Menu: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collection: UICollectionView!
    
    var pizzas:[Pizzas]?
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pizzas?.count ?? 0
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collection.dequeueReusableCell(withReuseIdentifier: "ChoiseCollectionViewCell", for: indexPath) as! ChoiseCollectionViewCell
        cell.name.text = pizzas?[indexPath.item].name
        cell.image.image = pizzas?[indexPath.item].image
        cell.layer.borderWidth = 1
        cell.layer.cornerRadius = 8
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = view.frame.size.width - 60
        let cellWidth = width / 2
        return CGSize(width: cellWidth, height: cellWidth * 1.5)
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collection.delegate = self
        collection.dataSource = self
        collection.register(UINib(nibName: "ChoiseCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ChoiseCollectionViewCell")
        // Do any additional setup after loading the view.
    }
    
}


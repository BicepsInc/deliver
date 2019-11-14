//
//  base.swift
//  delivery
//
//  Created by Roman Dvoritskiy on 04.11.2019.
//  Copyright © 2019 Roman Dvoritskiy. All rights reserved.
//

import Foundation
import UIKit


struct Pizzas {
    let name:String?
    let image:UIImage?
}

var pizzas = [Pizzas(name:"Margarita 14'",image:UIImage(named: "1")),
              Pizzas(name:"Margarita 14'",image:UIImage(named: "1")),
              Pizzas(name:"Margarita 14'",image:UIImage(named: "1"))]

var pizzaNames = ["Margarita 14'", "Cheese 14'", "4 Cheese 14'", "Bekon 14'", "Salami 14'", "Vegan 14'", "Margarita 18'", "Cheese 18'", "4 Cheese 18'", "Bekon 18'", "Salami 18'", "Vegan 18'"]
var pizzaImages: Array<UIImage> = [UIImage(named: "1")!, UIImage(named: "2")!, UIImage(named: "3")!, UIImage(named: "4")!, UIImage(named: "5")!, UIImage(named: "6")!, UIImage(named: "1")!, UIImage(named: "2")!, UIImage(named: "3")!, UIImage(named: "4")!, UIImage(named: "5")!, UIImage(named: "6")!]

var drinksNames = ["Fanta", "Sprite", "Coca-cola", "Pepsi", "Mirinda", "Tea"]
var drinksImages: Array<UIImage> = [UIImage(named: "1")!, UIImage(named: "2")!, UIImage(named: "3")!, UIImage(named: "4")!, UIImage(named: "5")!, UIImage(named: "6")!]

var sousNames = ["Ksss","ssss","dddd","ffff"]
var sousImages: Array<UIImage> = [UIImage(named: "1")!, UIImage(named: "2")!, UIImage(named: "3")!, UIImage(named: "4")!]

var desertNames = ["Cake", "Trot", "Tort", "Pirozhene"]
var desertImages: Array<UIImage> = [UIImage(named: "1")!, UIImage(named: "2")!, UIImage(named: "3")!, UIImage(named: "4")!]

//
//  dddd.swift
//  delivery
//
//  Created by Roman Dvoritskiy on 14.11.2019.
//  Copyright © 2019 Roman Dvoritskiy. All rights reserved.
//

import UIKit

class dddd: UIView {
   
    
    override func draw(_ rect: CGRect) {
        let max = 3000
        let res = rect.width / 3000
        let res1 = res * 2456
//           var total1 = 200
        let percent = (res1)
        let pathRect1 = CGRect(x: 0, y: 500, width: percent, height: rect.height)
        let path1 = UIBezierPath(roundedRect: pathRect1, cornerRadius: 0)
        path1.addClip()
        
        
        let pathRect = CGRect(x: 0 , y: 500, width: rect.width, height: rect.height)
        let path = UIBezierPath(roundedRect: pathRect, cornerRadius: 0)
        let color = UIColor.blue
        color.setFill()
        path.fill()
        
    }
    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
     // Drawing code
     }
     */
    
}

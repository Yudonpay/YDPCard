//
//  BackView.swift
//  YDPCard
//
//  Created by José Miguel Herrero on 27/12/2018.
//  Copyright © 2018 José Miguel Herrero. All rights reserved.
//

import UIKit

class BackView: UIView {
    
    var radius: CGFloat = 0
    var color: UIColor = .white
    var shadow: Bool = false
    var shadowColor: UIColor = .black
    var shadowOpacity: Float = 1
    var shadowRadius: CGFloat = 5
    
    //MARK: - Lifecycle methods
    override func draw(_ rect: CGRect) {
        let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: [.allCorners], cornerRadii: CGSize(width: radius, height: radius))
        
        if shadow {
            layer.masksToBounds = false
            layer.shadowColor = shadowColor.cgColor
            layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
            layer.shadowOpacity = shadowOpacity
            layer.shadowRadius = shadowRadius
            layer.shadowPath = path.cgPath
        }
        
        color.setFill()
        path.fill()
        
    }
}

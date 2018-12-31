//
//  CardViewModel.swift
//  YDPCard
//
//  Created by José Miguel Herrero on 27/12/2018.
//  Copyright © 2018 José Miguel Herrero. All rights reserved.
//

import UIKit

public class CardViewModel {
    public var title: String
    public var number: String
    public var subtitle: String
    public var image: UIImage
    
    public init(title: String, number: String, subtitle: String, image: UIImage) {
        self.title = title
        self.number = number
        self.subtitle = subtitle
        self.image = image
    }
}

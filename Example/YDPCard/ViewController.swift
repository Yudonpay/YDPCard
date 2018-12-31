//
//  ViewController.swift
//  YDPCard
//
//  Created by José Miguel Herrero on 12/31/2018.
//  Copyright (c) 2018 José Miguel Herrero. All rights reserved.
//

import UIKit
import YDPCard

class ViewController: UIViewController {
    
    @IBOutlet weak var cardView: CardView!
    @IBOutlet weak var secondCardView: CardView!
    @IBOutlet weak var thirdCardView: CardView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let infoCard = CardViewModel(title: "Number or barcode on your card",
                                     number: "\(Int.random(in: 0 ... 1000000000000000))",
                                     subtitle: "This card will be stored securely",
                                     image: UIImage(named: "barcode")!)
        
        cardView.configure(infoCard)
        
        infoCard.number = "\(Int.random(in: 0 ... 1000000000000000))"
        infoCard.image = UIImage(named: "qrcode")!
        secondCardView.configure(infoCard)
        
        infoCard.number = "\(Int.random(in: 0 ... 1000000000000000))"
        infoCard.image = UIImage(named: "pdfcode")!
        thirdCardView.configure(infoCard)
    }
    
    
}


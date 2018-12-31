//
//  CardView.swift
//  YDPCard
//
//  Created by José Miguel Herrero on 27/12/2018.
//  Copyright © 2018 José Miguel Herrero. All rights reserved.
//

import UIKit

@IBDesignable
public class CardView: UIView {
    var view: UIView!
    var isBackShowing = false
    
    //MARK: IBOutlets
    @IBOutlet weak var backCard: BackView!
    @IBOutlet weak var frontCard: FrontView!
    @IBOutlet weak var labelTitleNumber: UILabel!
    @IBOutlet weak var viewBand: UIView!
    @IBOutlet weak var fieldNumber: UITextField!
    @IBOutlet weak var labelSaveSecure: UILabel!
    @IBOutlet weak var codeImage: UIImageView!
    
    //MARK: IBInspectable
    @IBInspectable var color: UIColor = .white {
        didSet {
            setNeedsDisplay()
        }
    }
    
    @IBInspectable var radius: CGFloat = 20 {
        didSet {
            setNeedsDisplay()
        }
    }
    
    @IBInspectable var shadow: Bool = false {
        didSet {
            setNeedsDisplay()
        }
    }
    
    @IBInspectable var shadowColor: UIColor = .black {
        didSet {
            setNeedsDisplay()
        }
    }
    
    @IBInspectable var shadowRadius: CGFloat = 5 {
        didSet {
            setNeedsDisplay()
        }
    }
    
    @IBInspectable var shadowOpacity: Float = 1 {
        didSet {
            setNeedsDisplay()
        }
    }
    
    //MARK: - Lifecycle methods
    override init(frame: CGRect) {
        super.init(frame: frame)
        xibSetup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        xibSetup()
        self.layoutSubviews()
    }
    
    override public func draw(_ rect: CGRect) {
        configureFront()
        configureBack()
    }
    
    //MARK: - Private func
    private func loadViewFromNib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "CardView", bundle: bundle)
        guard let view = nib.instantiate(withOwner: self, options: nil)[0] as? UIView else {
            return UIView()
        }
        
        return view
    }
    
    private func xibSetup() {
        configureView()
    }
    
    private func configureView() {
        view = loadViewFromNib()
        view.frame = bounds
        view.autoresizingMask = [UIView.AutoresizingMask.flexibleWidth, UIView.AutoresizingMask.flexibleHeight]
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        view.addGestureRecognizer(tap)
        addSubview(view)
    }
    
    private func configureFront() {
        frontCard.color = color
        frontCard.radius = radius
        frontCard.shadow = shadow
        frontCard.shadowOpacity = shadowOpacity
        frontCard.shadowRadius = shadowRadius
        frontCard.shadowColor = shadowColor
    }
    
    private func configureBack() {
        backCard.color = color
        backCard.radius = radius
        backCard.shadow = shadow
        backCard.shadowOpacity = shadowOpacity
        backCard.shadowRadius = shadowRadius
        backCard.shadowColor = shadowColor
    }
    
    private func configureField(_ cardViewModel: CardViewModel) {
        self.fieldNumber.text = cardViewModel.number
        self.fieldNumber.isUserInteractionEnabled = cardViewModel.number.isEmpty
    }
    
    //MARK: Actions
    @objc func handleTap(_ sender: UITapGestureRecognizer) {
        if (isBackShowing) {
            //hide back Card
            UIView.transition(from: backCard,
                              to: frontCard,
                              duration: 0.4,
                              options: [.transitionFlipFromLeft, .showHideTransitionViews],
                              completion:nil)
        } else {
            //show front Card
            UIView.transition(from: frontCard,
                              to: backCard,
                              duration: 0.4,
                              options: [.transitionFlipFromRight, .showHideTransitionViews],
                              completion: nil)
        }
        isBackShowing = !isBackShowing
    }
    
    //MARK: - Public func
public func configure(_ cardViewModel: CardViewModel) {
        self.labelTitleNumber.text = cardViewModel.title
        configureField(cardViewModel)
        self.labelSaveSecure.text = cardViewModel.subtitle
        self.codeImage.image = cardViewModel.image
    }
}

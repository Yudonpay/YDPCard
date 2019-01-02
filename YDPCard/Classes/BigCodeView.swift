//
//  BigCodeView.swift
//  YDPCard
//
//  Created by José Miguel Herrero on 02/01/2019.
//

import UIKit

class BigCodeView: UIView {
    //MARK: Static vars
    static let identifier: String = "LoadingView"

    //MARK: IBOutlets
    @IBOutlet weak var imageCode: UIImageView!
    
    //MARK: IBAction
    @IBAction func buttonClose(_ sender: Any) {
        let window = UIApplication.shared.keyWindow!
        for view in window.subviews {
            if let bigCode = view as? BigCodeView {
                bigCode.removeFromSuperview()
            }
        }
    }
    
    //MARK: Lifecycle Methods
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    class func instanceFromNib() -> UIView {
        return UINib(nibName: BigCodeView.identifier, bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! UIView
    }
}

//
//  ImageViewController.swift
//  Teste XIB
//
//  Created by Felipe Kazuo Yatsu on 29/08/19.
//  Copyright © 2019 Felipe Kazuo Yatsu. All rights reserved.
//

import UIKit

@IBDesignable class Image: UIView{
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var button: UIButton!
    
    var view: UIView!
    var nibName = "Image"
    
    @IBInspectable var image: UIImage?
    
    override init(frame: CGRect) {
        super.init(frame: frame);
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    func setup() {
        self.view = loadViewFromNib()
        
        self.view.frame = bounds
        self.autoresizingMask = UIView.AutoresizingMask(rawValue: UIView.AutoresizingMask.flexibleWidth.rawValue | UIView.AutoresizingMask.flexibleHeight.rawValue)
        
        addSubview(view)
    }
    
    func loadViewFromNib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: self.nibName, bundle: bundle)
        
        return nib.instantiate(withOwner: self, options: nil).first as! UIView
    }
    
    @IBAction func buttonClick(_ sender: Any) {
        self.imageView.image = self.image
    }
}


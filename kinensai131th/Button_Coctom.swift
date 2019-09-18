//
//  Button_Cocyom.swift
//  Sirusi
//
//  Created by 原奏太 on 2018/06/17.
//  Copyright © 2018年 原奏太. All rights reserved.
//

import UIKit
@IBDesignable
class Button_Cocyom: UIButton {
    
    var selectView: UIView! = nil
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        myInit()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        myInit()
    }
    
    func myInit() {
        
        selectView = UIView(frame: self.bounds)
        selectView.backgroundColor = UIColor.black
        selectView.alpha = 0.0
        self.addSubview(selectView)
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        selectView.frame = self.bounds
    }
    
    // タッチ開始
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        UIView.animate(withDuration: 0.1, delay: 0.0, options: UIView.AnimationOptions.curveLinear, animations: {() -> Void in
            
            self.selectView.alpha = 0.5
            
        }, completion: {(finished: Bool) -> Void in
        })
    }
    
    // タッチ終了
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        
        UIView.animate(withDuration: 0.1, delay: 0.0, options: UIView.AnimationOptions.curveLinear, animations: {() -> Void in
            
            self.selectView.alpha = 0.0
            
        }, completion: {(finished: Bool) -> Void in
        })
    }
    
    @IBInspectable var textColor: UIColor?
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.clear {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }
    
    
    
    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
     // Drawing code
     }
     */
    
}


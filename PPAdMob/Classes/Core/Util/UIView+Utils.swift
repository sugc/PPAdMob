//
//  UIView+Utils.swift
//
//
//
//
//

import Foundation


extension UIView {
    
    var origin : CGPoint {
        
        get{
            return self.frame.origin
        }
        
        set(newVal){
            self.frame = CGRect(x: newVal.x,
                                y: newVal.y,
                                width: self.frame.width,
                                height: self.frame.height)
        }
    }
    
    var left : CGFloat {
        
        get{
            return self.frame.origin.x
        }
        
        set(newVal){
            self.frame = CGRect(x: newVal,
                                y: self.frame.origin.y,
                                width: self.frame.width,
                                height: self.frame.height)
        }
    }
    
    
    var right : CGFloat {
        
        get{
            return self.frame.origin.x + self.frame.width
        }
        
        set(newVal){
            self.frame = CGRect(x: newVal - self.frame.width,
                                y: self.frame.origin.y,
                                width: self.frame.width,
                                height: self.frame.height)
        }
    }
    
    
    var top : CGFloat {
        
        get{
            return self.frame.origin.y
        }
        
        set(newVal){
            self.frame = CGRect(x: self.frame.origin.x,
                                y: newVal,
                                width: self.frame.width,
                                height: self.frame.height)
        }
    }
    
    
    var bottom : CGFloat {
        
        get{
            return self.frame.origin.y + self.frame.height
        }
        
        set(newVal){
            self.frame = CGRect(x: self.frame.origin.x,
                                y: newVal - self.frame.height,
                                width: self.frame.width,
                                height: self.frame.height)
        }
    }
    
    var size : CGSize {
        
        get{
            return self.frame.size
        }
        
        set(newVal){
            self.frame = CGRect(x: self.frame.origin.x,
                                y: self.frame.origin.y,
                                width: newVal.width,
                                height: newVal.height)
        }
    }
    
    var width : CGFloat {
        
        get{
            return self.frame.width
        }
        
        set(newVal){
            self.frame = CGRect(x: self.frame.origin.x,
                                y: self.frame.origin.y,
                                width: newVal,
                                height: self.frame.height)
        }
    }
    
    var height : CGFloat {
        
        get{
            return self.frame.height
        }
        
        set(newVal){
            self.frame = CGRect(x: self.frame.origin.x,
                                y: self.frame.origin.y,
                                width: self.frame.width,
                                height: newVal)
        }
    }
    
    var centerX : CGFloat {
        
        get{
            return self.center.x
        }
        
        set(newVal){
            self.center = CGPoint.init(x: newVal,
                                       y: self.centerY)
        }
    }
    
    var centerY : CGFloat {
        
        get{
            return self.center.y
        }
        
        set(newVal){
            self.center = CGPoint.init(x: self.centerX,
                                       y: newVal)
        }
    }
    
    func isPositionInView(position:CGPoint) -> Bool {
        
        if self.left <= position.x
            && self.right >= position.x
            && self.top <= position.y
            && self.bottom >= position.y{
            return true
        }
        
        return false
    }
    
    func setAnchor(anchorPoint: CGPoint ) {
        let oldOrigin = self.frame.origin;
        self.layer.anchorPoint = anchorPoint;
        let newOrigin = self.frame.origin;
        
        var transition : CGPoint = CGPoint()
        transition.x = newOrigin.x - oldOrigin.x;
        transition.y = newOrigin.y - oldOrigin.y;
        
        self.center = CGPoint.init(x:self.center.x - transition.x, y:self.center.y - transition.y)
    }
    
}























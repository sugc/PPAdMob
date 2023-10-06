//
//  PPAdMob.swift
//  PPAdMob
//
//  Created by sugc on 2023/9/3.
//

import Foundation

//代理
public protocol PPAdDelegate : NSObjectProtocol {
    
    func PPAdRequestAd(_ unitAdID:String, completion:(_ adItem:PPAdBaseItem)->Void)
    
}

public class PPAdMob {
    
    var shared : PPAdMob = PPAdMob()
    
    init() {
        
    }
    
    //use default Delegate
    public static func config() {
        
        
    }
    
    
    public static func config(delegate:PPAdDelegate) {
        
    }
}

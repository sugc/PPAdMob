//
//  PPAdBaseItem.swift
//  PPAdMob
//
//  Created by sugc on 2023/9/3.
//

import Foundation

/*
 为何设置多个url, 是为了在复杂情况下获得更好的转化，例如，美团领券，可以按照美团，微信，浏览器的顺序去判断能否打开
 这样可以获得更高的转化率
*/
public class PPAdBaseItem : Codable {
    public var adID : String!     //广告唯一标识
    public var adJumpUrls : [URL]!  //跳转链接, 可以设置多个，按照优先级进行跳转
    
    init(adID: String!, adJumpUrls: [URL]!) {
        self.adID = adID
        self.adJumpUrls = adJumpUrls
    }
    
    init() {
        
    }
}

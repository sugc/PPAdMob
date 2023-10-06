//
//  PPAdItemBanner.swift
//  PPAdMob
//
//  Created by sugc on 2023/9/2.
//

import Foundation

public struct PPAdBgColor {
    var startColor : UIColor!
    var endColor : UIColor!
    
    public init(startColor: UIColor!, endColor: UIColor!) {
        self.startColor = startColor
        self.endColor = endColor
    }
    
}

public class PPAdItemBanner : PPAdBaseItem {
    
    public var adBgColor : PPAdBgColor?
    public var adBgImgae : UIImage? //
    
    public var adLeftIcon : UIImage? //
    public var title : String?
    public var subTitle : String?
    public var btnTitle : String?  //跳转按钮文案
    public var btnBgColor : PPAdBgColor?
    
    public init(adID:String!, adJumpUrl:[URL], adBgColor: PPAdBgColor? = nil, adBgImgae: UIImage? = nil, adLeftIcon: UIImage? = nil, title: String? = nil, subTitle: String? = nil, btnTitle: String? = nil, btnBgColor: PPAdBgColor? = nil) {
        super.init(adID: adID, adJumpUrls: adJumpUrl)
        self.adBgColor = adBgColor
        self.adBgImgae = adBgImgae
        self.adLeftIcon = adLeftIcon
        self.title = title
        self.subTitle = subTitle
        self.btnTitle = btnTitle
        self.btnBgColor = btnBgColor
    }
    
    required init(from decoder: Decoder) throws {
        fatalError("init(from:) has not been implemented")
    }
    
    public override init() {
        super.init()
        
    }
    
}

extension PPAdItemBanner {
    
    var defautBgColor : PPAdBgColor {
        return PPAdBgColor(startColor: UIColor.lightGray, endColor: UIColor.lightGray)
    }
    
    var defaultBtnBgColor : PPAdBgColor {
        return PPAdBgColor(startColor: UIColor.lightGray, endColor: UIColor.lightGray)
    }
}

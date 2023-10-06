//
//  Banner.swift
//  PPAdMob
//
//  Created by sugc on 2023/9/2.
//

import UIKit


public class PPAdBannerView : UIView {
    
    var bgImageView :UIImageView!
    var titleLabel : UILabel!
    var subTitleLabel : UILabel!
    var iconImageView : UIImageView!
    var adCloseBtn : UIButton!
    
    
    public var adItem : PPAdItemBanner? {
        didSet {
            refresh()
        }
    }
    //请求广告
    var adUnitID : String! = "" {
        didSet {
            
        }
    }
    
    
    public init(size:CGSize) {
        super.init(frame: CGRect(origin: .zero, size: size))
        bgImageView = UIImageView.init(frame: bounds)
        bgImageView.contentMode = .scaleAspectFit
        
        iconImageView = UIImageView.init(frame: CGRect.init(x: 10, y: 5, width: 40, height: 40))
        iconImageView.contentMode = .scaleAspectFill
        iconImageView.layer.cornerRadius = 4.0
        
        titleLabel = UILabel.init(frame: .zero)
        titleLabel.font = .boldSystemFont(ofSize: 16)
        titleLabel.textAlignment = .left
        
        subTitleLabel = UILabel.init(frame: .zero)
        subTitleLabel.font = .systemFont(ofSize: 12)
        subTitleLabel.textAlignment = .left
        
        titleLabel.left = iconImageView.right + 10.0
        subTitleLabel.left = iconImageView.right + 10.0
        
        adCloseBtn = UIButton.init(frame: CGRect.zero)
        let adTitle = NSAttributedString(string: "X 广告", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 8), NSAttributedString.Key.foregroundColor : UIColor.systemBlue] )
        adCloseBtn.setAttributedTitle(adTitle, for: .normal)
        adCloseBtn.sizeToFit()
        adCloseBtn.addTarget(self, action: #selector(closeAd(button:)), for: .touchUpInside)
        
        let ges = UITapGestureRecognizer(target: self, action: #selector(tapAction(gesture:)))
        self.addGestureRecognizer(ges)
        
        addSubview(bgImageView)
        addSubview(titleLabel)
        addSubview(subTitleLabel)
        addSubview(iconImageView)
        addSubview(adCloseBtn)
    }
    
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        layout()
    }
    
    func refresh() {
        guard let item = adItem else {return}
        bgImageView.image = item.adBgImgae
        titleLabel.text = item.title
        titleLabel.sizeToFit()
        subTitleLabel.text = item.subTitle
        subTitleLabel.sizeToFit()
        iconImageView.image = item.adLeftIcon
        layout()
    }
    
    func layout() {
        bgImageView.frame = bounds
        titleLabel.top = (height - titleLabel.height - subTitleLabel.height - 5) / 2.0
        subTitleLabel.top = titleLabel.bottom + 5
        adCloseBtn.bottom = height
        
//        titleLabel.width
    }
    
    @objc func tapAction(gesture:UITapGestureRecognizer)->Void {
        //跳转
        
        guard let urls = adItem?.adJumpUrls else {
            return
        }
        
        for url in urls {
            if UIApplication.shared.canOpenURL(url) {
                UIApplication.shared.open(url)
                return
            }
        }
    }
    
    @objc func closeAd(button:UIButton)->Void {
        
    }
}

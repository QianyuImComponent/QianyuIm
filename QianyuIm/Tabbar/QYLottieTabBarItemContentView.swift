//
//  QYLottieTabBarItemContentView.swift
//  QYTipCollection
//
//  Created by cyd on 2020/8/18.
//  Copyright © 2020 qianyuIm. All rights reserved.
//

import UIKit
import ESTabBarController_swift
import Lottie
import QYUtilCore

class QYLottieTabBarItemContentView: ESTabBarItemContentView {

    lazy var lottieView: AnimationView = {
        let lottieView = AnimationView(name: lottieName)
        return lottieView
    }()
    var lottieName: String
    init(lottieName: String) {
        self.lottieName = lottieName
        super.init(frame: .zero)
        textColor = QYColor.tabbarColor
        highlightTextColor = QYColor.tabbarHighlightColor
        iconColor = QYColor.tabbarColor
        highlightIconColor = QYColor.tabbarHighlightColor

    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func selectAnimation(animated: Bool, completion: (() -> ())?) {
        super.selectAnimation(animated: animated, completion: nil)
        imageView.isHidden = true
        lottieView.frame = imageView.frame
        self.addSubview(lottieView)
        lottieView.play { (animationFinished) in
            self.imageView.isHidden = false
            self.lottieView.stop()
            self.lottieView.removeFromSuperview()
        }
    }
}


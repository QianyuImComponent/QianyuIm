//
//  QYTabBarController.swift
//  QianyuIm
//
//  Created by cyd on 2020/8/19.
//  Copyright © 2020 qy. All rights reserved.
//

import UIKit
import ESTabBarController_swift
import QYUtilCore

class QYTabBarController: ESTabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    func controller(vc: QYViewController,
                    lottieName:String,
                    title: String,
                    normal: String,
                    select: String) -> QYNavigationController {
        let normalImage = UIImage(named: normal)
        let selectImage = UIImage(named: select)
        
        vc.tabBarItem = ESTabBarItem(QYLottieTabBarItemContentView(lottieName: lottieName), title: title, image: normalImage, selectedImage: selectImage)
        let na = QYNavigationController(rootViewController: vc)
        return na
    }
}

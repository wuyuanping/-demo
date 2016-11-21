//
//  OtherViewController.swift
//  换肤
//
//  Created by 吴园平 on 20/11/2016.
//  Copyright © 2016 WuYuanPing. All rights reserved.
//

import UIKit

class OtherViewController: UIViewController {

    @IBOutlet weak var bgimageView: UIImageView!
    
    @IBOutlet weak var iconButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //一跳转进来，就跟新设置好的视图
        bgimageView.image = SkinTools.imageName("back.png")
        iconButton.setImage(SkinTools.imageName("icon.png"), for: .normal)
    }
}

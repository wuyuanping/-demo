//
//  ViewController.swift
//  换肤
//
//  Created by 吴园平 on 20/11/2016.
//  Copyright © 2016 WuYuanPing. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK - 属性
    @IBOutlet weak var bgImageView: UIImageView!
    
    @IBOutlet weak var IconView: UIButton!
    
    @IBOutlet weak var skinViewTopCons: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //设置默认皮肤
        setcurrentSkin()
    }
}

extension ViewController{
    //没有就弹出皮肤选择条
    @IBAction func changeSkin(_ sender: Any) {
        skinViewTopCons.constant = skinViewTopCons.constant == 0 ? -44 : 0
        //加一个动画效果
        UIView.animate(withDuration: 0.5, animations: {
            self.view.layoutIfNeeded() //立即布置子View
        })
        
    }
    @IBAction func skinBtnClick(_ sender: UIButton) {
      
        switch sender.tag {
        case 0:
            SkinTools.setCurrentSkinName("guoqing")
            setcurrentSkin()
        case 1:
            SkinTools.setCurrentSkinName("zhongqiu")
            setcurrentSkin()
        case 2:
            SkinTools.setCurrentSkinName("chunjie")
            setcurrentSkin()
        default:
            print("你设置的主题不合理")
        }
    }
    //通过图片名字设置背景图片
   fileprivate func setcurrentSkin(){
        bgImageView.image = SkinTools.imageName("back.png")
        IconView.setImage(SkinTools.imageName("icon.png"), for: .normal)  //给按钮设置图片默认会系统渲染，故改为custom ，或直接设置图片，或者通过代码
    }
}












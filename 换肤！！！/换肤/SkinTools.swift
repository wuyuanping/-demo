//
//  SkinTools.swift
//  换肤
//
//  Created by 吴园平 on 20/11/2016.
//  Copyright © 2016 WuYuanPing. All rights reserved.
//

import UIKit

private let skinKey = "skinKey"  //当前类(同名类)可以使用
class SkinTools: NSObject {
    
    static var skinName: String = ""
    func initialize(){  //当前类或他的子类每次创建对象都会调用，相当于重置一次，不能用viewDidload，因为只调用一次
        
        SkinTools.skinName = (UserDefaults.standard.object(forKey: skinKey) as? String) ?? "chunjie"
    }
}

extension SkinTools{
    //开发者通过图片名称返回一张图片
   class func imageName(_ imageName: String) -> UIImage?{
        
    //考虑到实际开发美工方便，我们就得拼接图片路径来区分不同图片,相对路径即可
        return UIImage(named:"Skin/\(SkinTools.skinName)/\(imageName)")
    
    }
    //跟新当前皮肤的的颜色，并偏好设置处理
   class func setCurrentSkinName(_ skinName:String){
    
        self.skinName = skinName
        //用户数据偏好设置
        UserDefaults.standard.set(skinName, forKey: skinKey) //key随你设置，value也设置到你指定的位置
        UserDefaults.standard.synchronize()  //立即同步保存，更安全
    }
    
    //假设还要给label换不同皮肤
    class func labelBgColor() -> UIColor {
        switch skinName {
        case "chunjie":
            return .red
        case "zhongqiu":
            return .green
        case "guoqing":
            return .blue
        default:
            return .red
        }
    }

}

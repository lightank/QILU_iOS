//
//  MainTabBarController.swift
//  QILU
//
//  Created by huanyu.li on 2021/1/14.
//

import Foundation
import UIKit
import RAMAnimatedTabBarController

class MainTabBarController: RAMAnimatedTabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        commitInitView()
        addAllChildsControllors();
        delegate = self
    }
    
    func addAllChildsControllors() {
        addOneChildVC(childVC:ViewController(), title:"标题1", imageNormal:UIImage(named: ""), imageSelect: UIImage(named: ""))
        addOneChildVC(childVC:ViewController(), title:"标题2", imageNormal:UIImage(named: ""), imageSelect: UIImage(named: ""))
        addOneChildVC(childVC:ViewController(), title:"标题3", imageNormal:UIImage(named: ""), imageSelect: UIImage(named: ""))
        addOneChildVC(childVC:ViewController(), title:"标题4", imageNormal:UIImage(named: ""), imageSelect: UIImage(named: ""))
    }
    
    func addOneChildVC(childVC: UIViewController, title: String?, imageNormal: UIImage?, imageSelect: UIImage?) {
        let navVC = UINavigationController(rootViewController: childVC)
        let item = RAMAnimatedTabBarItem(title: title, image: imageNormal, selectedImage: imageSelect)
        item.animation = RAMBounceAnimation()
        addChild(navVC);
        navVC.tabBarItem = item
    }
}

extension MainTabBarController {
    func commitInitView() {
        view.backgroundColor = .white
        tabBar.isTranslucent = false
        tabBar.barTintColor = .white
    }
}

//
//  TabbarVC.swift
//  Deep Breathe
//
//  Created by Afnan Ahmed on 15/12/2023.
//

import UIKit

@available(iOS 13.0, *)
class TabbarVC: UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true

        
        UITabBar.appearance().tintColor = UIColor.black
        UITabBar.appearance().unselectedItemTintColor = AppColors.shared.Gray2
        
        self.navigationController?.isNavigationBarHidden = true
        // Create view controllers for each tab
        let vc11 = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "MeditationVC") as! MeditationVC
        let vc1 = UINavigationController(rootViewController: vc11)
        vc1.tabBarItem = UITabBarItem(title: "Meditation", image: UIImage(named: "Meditation"), tag: 0)
        
        
        let vc20 = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "SleepVC") as! SleepVC
        let vc2 = UINavigationController(rootViewController: vc20)
        vc2.tabBarItem = UITabBarItem(title: "Sleep", image: UIImage(named: "Moon"), tag: 1)
        
        let vc30 = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "ProgressVC") as! ProgressVC
        let vc3 = UINavigationController(rootViewController: vc30)
        vc3.tabBarItem = UITabBarItem(title: "Progress", image: UIImage(named: "Progress"), tag: 1)
        
        let vc40 = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "MeditationVC") as! MeditationVC
        let vc4 = UINavigationController(rootViewController: vc40)
        vc4.tabBarItem = UITabBarItem(title: "Progress", image: UIImage(named: "Profile"), tag: 1)
        
        let vc50 = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "MeditationVC") as! MeditationVC
        let vc5 = UINavigationController(rootViewController: vc50)
        vc5.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(named: "Clock"), tag: 1)
    
//        self.tabBar.clipsToBounds = true
//        self.tabBar.layer.cornerRadius = 15
//        self.tabBar.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        self.viewControllers = [vc1, vc2, vc3]
        self.tabBar.backgroundColor = .white
        self.tabBar.barTintColor = UIColor.black
//        self.tabBar.tintColor = AppColor.Primary500 ?? .clear
//        
//        tabBar.layer.shadowOffset = CGSize(width: 0, height: 0)
//        tabBar.layer.shadowRadius = 10
//        tabBar.layer.shadowColor = AppColor.C200?.cgColor
//        tabBar.layer.shadowOpacity = 0.5

        self.delegate = self
    }
}

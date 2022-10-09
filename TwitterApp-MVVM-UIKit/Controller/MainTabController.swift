//
//  MainTabController.swift
//  TwitterApp-MVVM-UIKit
//
//  Created by Justyna Kowalkowska on 09/10/2022.
//

import UIKit    

class MainTabController: UITabBarController {

     //MARK: - Properties
    
     //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureViewController()
        
    }

     //MARK: - Helper functions
    
    func configureViewController() {
        
        let feed = templateNavigationController(image: "home_unselected", rootviewController: FeedController())
        let explore = templateNavigationController(image: "search_unselected", rootviewController: ExploreController())
        let notifications = templateNavigationController(image: "like_unselected", rootviewController: NotificationsController())
        let conversation = templateNavigationController(image: "ic_mail_outline_white_2x-1", rootviewController: ConversationsController())

        
        viewControllers  = [feed, explore, notifications, conversation]
    }
    
    func templateNavigationController(image: String, rootviewController: UIViewController ) -> UINavigationController {
        
        let nav = UINavigationController(rootViewController: rootviewController)
        nav.tabBarItem.image = UIImage(named: image)
        nav.navigationBar.barTintColor = .white
        
        return nav
    }
}

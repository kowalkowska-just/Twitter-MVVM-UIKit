//
//  MainTabController.swift
//  TwitterApp-MVVM-UIKit
//
//  Created by Justyna Kowalkowska on 09/10/2022.
//

import UIKit    

class MainTabController: UITabBarController {

     //MARK: - Properties
    
    let actionButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(named: "new_tweet"), for: .normal)
        button.tintColor = .white
        button.backgroundColor = UIColor.mainBlue
        button.addTarget(self, action: #selector(actionButtonTapped), for: .touchUpInside)
        return button
    }()
    
     //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureViewController()
        configureUI()
        
    }
    
     //MARK: - SELECTORS
    @objc func actionButtonTapped() {
        print("Action button tapped")
    }

     //MARK: - Helper functions
    
    func configureUI() {
        view.addSubview(actionButton)
        actionButton.anchor(bottom: view.safeAreaLayoutGuide.bottomAnchor, right: view.rightAnchor, paddingBottom: 64, paddingRight: -16, width: 56, height: 56)
        actionButton.layer.cornerRadius = 56/2
    }
    
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

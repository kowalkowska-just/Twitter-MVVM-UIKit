//
//  NotificationsCopntroller.swift
//  TwitterApp-MVVM-UIKit
//
//  Created by Justyna Kowalkowska on 09/10/2022.
//

import UIKit

class NotificationsController: UITabBarController {

     //MARK: - Properties
    
     //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        
    }

     //MARK: - Helper functions

    func configureUI() {
        view.backgroundColor = .white
        navigationItem.title = "Notifications"
    }
}

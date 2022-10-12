//
//  RegistrationController.swift
//  TwitterApp-MVVM-UIKit
//
//  Created by Justyna Kowalkowska on 12/10/2022

import UIKit

class RegistrationController: UIViewController {
    
     //MARK: - Properties
    
    private let logoImageView: UIImageView = {
        let iv = UIImageView()
        return iv
    }()
    
     //MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
      //MARK: - Selectors
    
     //MARK: - Helpers
    
    func configureUI() {
        view.backgroundColor = UIColor.mainBlue
    }
    
}

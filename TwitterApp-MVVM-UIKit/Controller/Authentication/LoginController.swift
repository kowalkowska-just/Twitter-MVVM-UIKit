//
//  LoginController.swift
//  TwitterApp-MVVM-UIKit
//
//  Created by Justyna Kowalkowska on 12/10/2022.
//

import UIKit

class LoginController: UIViewController {
    
     //MARK: - Propereties
    
    private let logoImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds = true
        iv.image = UIImage(named: "TwitterLogo")
        return iv
    }()
    
     //MARK: - Life cycle
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }

    
     //MARK: - Selectors
    
     //MARK: - Helpers
    
    func configureUI() {
        view.backgroundColor = .mainBlue
        navigationController?.navigationBar.barStyle = .black
        
        view.addSubview(logoImageView)
        logoImageView.setDimensions(width: 150, height: 150)
        logoImageView.centerX(inView: view, topAnchor: view.safeAreaLayoutGuide.topAnchor)
    }
}

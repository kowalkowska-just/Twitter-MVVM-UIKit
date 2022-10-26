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
    
    private lazy var emailContainerView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.anchor(height: 50)
        
        let iv = UIImageView()
        view.addSubview(iv)
        iv.image = UIImage(named: "ic_mail_outline_white_2x-1")
        iv.anchor(left: view.leftAnchor, bottom: view.bottomAnchor, paddingLeft: 8, paddingBottom: 8)
        iv.setDimensions(width: 24, height: 24)
        
        return view
    }()
    
    private lazy var passwardContainerView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.anchor(height: 50)
        
        let iv = UIImageView()
        view.addSubview(iv)
        iv.image = UIImage(named: "ic_lock_outline_white_2x")
        iv.anchor(left: view.leftAnchor, bottom: view.bottomAnchor, paddingLeft: 8, paddingBottom: 8)
        iv.setDimensions(width: 24, height: 24)
        
        view.addSubview(iv)
        
        return view
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
        
        let stack = UIStackView(arrangedSubviews: [emailContainerView, passwardContainerView])
        stack.axis = .vertical
        stack.spacing = 8
        
        view.addSubview(stack)
        stack.anchor(top: logoImageView.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor)
    }
}

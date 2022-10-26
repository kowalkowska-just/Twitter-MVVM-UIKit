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
        let view = Utilities().inputContainerView(withImage: "ic_mail_outline_white_2x-1", textField: "Email", isSecureTextEntry: false)
        return view
    }()
    
    private lazy var passwardContainerView: UIView = {
        let view = Utilities().inputContainerView(withImage: "ic_lock_outline_white_2x", textField: "Password", isSecureTextEntry: true)
        return view
    }()
    
    private let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .white
        button.setTitle("Log In", for: .normal)
        button.setTitleColor(.mainBlue, for: .normal)
        button.anchor(height: 50)
        button.layer.cornerRadius = 25
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.addTarget(self, action: #selector(handleLogin), for: .touchUpInside)
        return button
    }()
    
    private let dontHaveAccountButton: UIButton = {
        let button = Utilities().attributedButton("Don't have an account? ", "Sign Up")
        button.addTarget(self, action: #selector(handleShowSignUp), for: .touchUpInside)
        return button
    }()
    
    
     //MARK: - Life cycle
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }

    
     //MARK: - Selectors
    
    @objc func handleLogin() {
        print("Handle login....")
    }
    
    @objc func handleShowSignUp() {
        print("Show sign up....")
    }

    
     //MARK: - Helpers
    
    func configureUI() {
        view.backgroundColor = .mainBlue
        navigationController?.navigationBar.barStyle = .black
        
        view.addSubview(logoImageView)
        logoImageView.setDimensions(width: 150, height: 150)
        logoImageView.centerX(inView: view, topAnchor: view.safeAreaLayoutGuide.topAnchor)
        
        let stack = UIStackView(arrangedSubviews: [emailContainerView,
                                                   passwardContainerView,
                                                   loginButton])
        stack.axis = .vertical
        stack.spacing = 20
        stack.distribution = .fillEqually
        
        view.addSubview(stack)
        stack.anchor(top: logoImageView.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingLeft: 20, paddingRight: -20)
        
        view.addSubview(dontHaveAccountButton)
        dontHaveAccountButton.anchor(left: view.leftAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, right: view.rightAnchor, paddingLeft: 20, paddingBottom: 20, paddingRight: -20)
    }
}

//
//  Utilities.swift
//  TwitterApp-MVVM-UIKit
//
//  Created by Justyna Kowalkowska on 26/10/2022.
//

import UIKit

class Utilities {
    
    func inputContainerView(withImage nameImage: String, textField placeholder: String, isSecureTextEntry: Bool) -> UIView {
        
        let view = UIView()
        let iv = UIImageView()
        let textField = UITextField()
        let dividerView = UIView()
        
        view.anchor(height: 50)
    
        view.addSubview(iv)
        iv.image = UIImage(named: nameImage)
        iv.anchor(left: view.leftAnchor, bottom: view.bottomAnchor, paddingLeft: 8, paddingBottom: 8)
        iv.setDimensions(width: 24, height: 24)
        
        view.addSubview(textField)
        textField.attributedPlaceholder = NSAttributedString(
            string: placeholder,
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.white.withAlphaComponent(0.65)])
        textField.textColor = .white
        textField.isSecureTextEntry = isSecureTextEntry
        textField.anchor(left: iv.rightAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingLeft: 8, paddingBottom: 8, paddingRight: 8)
        
        view.addSubview(dividerView)
        dividerView.backgroundColor = .white.withAlphaComponent(0.7)
        dividerView.anchor(left: view.leftAnchor,bottom: view.bottomAnchor, right: view.rightAnchor, paddingLeft: 2, paddingBottom: 2, paddingRight: 2, height: 0.75)
        
        return view
    }
    
}

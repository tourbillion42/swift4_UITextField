//
//  ViewController.swift
//  swift4_UITextField
//
//  Created by Hwang on 2020/01/26.
//  Copyright © 2020 Hwang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let oneLab : UILabel = UILabel()
    let twoLab : UILabel = UILabel()
    let naTextField : UITextField = UITextField()
    let pwdTextField : UITextField = UITextField()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        oneLab.text = "Name"
        oneLab.textColor = UIColor.white
        oneLab.textAlignment = .center
        oneLab.font = .systemFont(ofSize: 20)
        oneLab.backgroundColor = .blue
        oneLab.layer.masksToBounds = true
        oneLab.layer.cornerRadius = 5
        self.view.addSubview(oneLab)
        oneLab.translatesAutoresizingMaskIntoConstraints = false
        oneLab.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 400).isActive = true
        oneLab.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30).isActive = true
        oneLab.heightAnchor.constraint(equalToConstant: 30).isActive = true
        oneLab.widthAnchor.constraint(equalToConstant: 120).isActive = true

        twoLab.text = "Password"
        twoLab.textColor = UIColor.white
        twoLab.textAlignment = .center
        twoLab.backgroundColor = .red
        twoLab.font = .boldSystemFont(ofSize: 20)
        twoLab.layer.masksToBounds = true
        twoLab.layer.cornerRadius = 5
        self.view.addSubview(twoLab)
        twoLab.translatesAutoresizingMaskIntoConstraints = false
        twoLab.topAnchor.constraint(equalTo: oneLab.bottomAnchor, constant: 20).isActive = true
        twoLab.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30).isActive = true
        twoLab.heightAnchor.constraint(equalToConstant: 30).isActive = true
        twoLab.widthAnchor.constraint(equalToConstant: 120).isActive = true

        naTextField.placeholder = "name"
        naTextField.borderStyle  = .roundedRect
        naTextField.clearButtonMode = .whileEditing
        self.view.addSubview(naTextField)
        naTextField.translatesAutoresizingMaskIntoConstraints = false
        naTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 400).isActive = true
        naTextField.leadingAnchor.constraint(equalTo: oneLab.trailingAnchor, constant: 30).isActive = true
        naTextField.heightAnchor.constraint(equalToConstant: 30).isActive = true
        naTextField.widthAnchor.constraint(equalToConstant: 180).isActive = true
        
        pwdTextField.placeholder = "password"
        pwdTextField.borderStyle = .roundedRect
        pwdTextField.clearButtonMode = .always
        pwdTextField.clearsOnBeginEditing = true
        pwdTextField.isSecureTextEntry = true
        self.view.addSubview(pwdTextField)
        pwdTextField.translatesAutoresizingMaskIntoConstraints = false
        pwdTextField.topAnchor.constraint(equalTo: naTextField.bottomAnchor, constant: 20).isActive = true
        pwdTextField.leadingAnchor.constraint(equalTo: twoLab.trailingAnchor, constant: 30).isActive = true
        pwdTextField.heightAnchor.constraint(equalToConstant: 30).isActive = true
        pwdTextField.widthAnchor.constraint(equalToConstant: 180).isActive = true
    }
}


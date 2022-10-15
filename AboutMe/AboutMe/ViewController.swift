//
//  ViewController.swift
//  AboutMe
//
//  Created by Caroline Frey on 10/15/22.
//

import UIKit

class ViewController: UIViewController {

    let imageAndNameView = ImageAndNameView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(named: "Color2")

        view.addSubview(imageAndNameView)
        
        setConstraints()
    }
    
    func setConstraints() {
        imageAndNameView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            imageAndNameView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            imageAndNameView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 34),
            imageAndNameView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -34),
            imageAndNameView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.4),
        
        ])
    }
}



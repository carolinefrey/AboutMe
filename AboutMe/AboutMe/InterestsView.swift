//
//  InterestsView.swift
//  AboutMe
//
//  Created by Caroline Frey on 10/16/22.
//

import UIKit

class InterestsView: UIView {

    let box = UIView()
    let interests = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(box)
        addSubview(interests)
        
        configureBox()
        configureInterests()
        
        setConstraints()
    }
    
    private func configureBox() {
        box.backgroundColor = UIColor(named: "Color2")
        box.layer.cornerRadius = 30
    }
    
    private func configureInterests() {
        interests.text = "Some of my interests include skiing, hiking, and hanging out with friends and family!"
        interests.textColor = UIColor(named: "Color1")
        interests.font = UIFont(name: "Poppins-Regular", size: 16)
        interests.lineBreakMode = .byWordWrapping
        interests.numberOfLines = 0
    }
    
    private func setConstraints() {
        box.translatesAutoresizingMaskIntoConstraints = false
        interests.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            box.leadingAnchor.constraint(equalTo: leadingAnchor),
            box.trailingAnchor.constraint(equalTo: trailingAnchor),
            box.topAnchor.constraint(equalTo: topAnchor),
            box.bottomAnchor.constraint(equalTo: bottomAnchor),

            interests.leadingAnchor.constraint(equalTo: box.leadingAnchor, constant: 34),
            interests.trailingAnchor.constraint(equalTo: box.trailingAnchor, constant: -34),
            interests.centerYAnchor.constraint(equalTo: box.centerYAnchor),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

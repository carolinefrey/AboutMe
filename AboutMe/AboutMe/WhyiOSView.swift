//
//  WhyiOSView.swift
//  AboutMe
//
//  Created by Caroline Frey on 10/16/22.
//

import UIKit

class WhyiOSView: UIView {
    
    let box = UIView()
    let sectionTitle = UILabel()
    let whyiOS = UILabel()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(box)
        addSubview(sectionTitle)
        addSubview(whyiOS)
        
        configureBox()
        configureSectionTitle()
        configureWhyiOS()
        
        setConstraints()
    }
    
    private func configureBox() {
        box.backgroundColor = UIColor(named: "Color2")
        box.layer.cornerRadius = 30
    }
    
    private func configureSectionTitle() {
        sectionTitle.text = "I like iOS Development because..."
        sectionTitle.textColor = .black
        sectionTitle.font = UIFont(name: "Poppins-Medium", size: 16)
    }

    private func configureWhyiOS() {
        whyiOS.text = "placeholder"
        whyiOS.textColor = UIColor(named: "Color1")
        whyiOS.font = UIFont(name: "Poppins-Regular", size: 14)
        whyiOS.lineBreakMode = .byWordWrapping
        whyiOS.numberOfLines = 0
        whyiOS.textAlignment = .left
    }
    
    private func setConstraints() {
        box.translatesAutoresizingMaskIntoConstraints = false
        sectionTitle.translatesAutoresizingMaskIntoConstraints = false
        whyiOS.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            box.topAnchor.constraint(equalTo: topAnchor),
            box.leadingAnchor.constraint(equalTo: leadingAnchor),
            box.trailingAnchor.constraint(equalTo: trailingAnchor),
            box.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            sectionTitle.topAnchor.constraint(equalTo: box.topAnchor, constant: 10),
            sectionTitle.leadingAnchor.constraint(equalTo: box.leadingAnchor, constant: 24),
            sectionTitle.trailingAnchor.constraint(equalTo: box.trailingAnchor, constant: -24),
            
            whyiOS.topAnchor.constraint(equalTo: sectionTitle.bottomAnchor, constant: 10),
            whyiOS.leadingAnchor.constraint(equalTo: box.leadingAnchor, constant: 24),
            whyiOS.trailingAnchor.constraint(equalTo: box.trailingAnchor, constant: -24),
            whyiOS.bottomAnchor.constraint(equalTo: box.bottomAnchor, constant: -15),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

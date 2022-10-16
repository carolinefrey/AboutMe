//
//  LocationAndSocialsView.swift
//  AboutMe
//
//  Created by Caroline Frey on 10/15/22.
//

import UIKit

class LocationAndSocialsView: UIView {
    
    let box = UIView()
    let pin = UIImageView()
    let location = UILabel()
    let divider = UIView()
    let instaLogo = UIImageView()
    let instaHandle = UILabel()
    let linkedinLogo = UIImageView()
    let linkedinHandle = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(box)
        addSubview(pin)
        addSubview(location)
        addSubview(divider)
        addSubview(instaLogo)
        addSubview(instaHandle)
        addSubview(linkedinLogo)
        addSubview(linkedinHandle)
        
        configureBox()
        configurePin()
        configureLocation()
        configureDivider()
        configureInstaLogo()
        configureInstaHandle()
        configureLinkedinLogo()
        configureLinkedinHandle()
        
        setConstraints()
    }
    
    func configureBox() {
        box.backgroundColor = UIColor(named: "Color2")
        box.layer.cornerRadius = 30
    }
    
    func configurePin() {
        let largeConfig = UIImage.SymbolConfiguration(pointSize: 20, weight: .regular, scale: .large)
        pin.image = UIImage(systemName: "mappin", withConfiguration: largeConfig)
        pin.tintColor = .black
        pin.contentMode = .left
    }
    
    func configureLocation() {
        location.text = "Denver, CO"
        location.textColor = .black
        location.font = UIFont(name: "Poppins-Regular", size: 18)
        location.textAlignment = .left
    }
    
    func configureDivider() {
        divider.backgroundColor = UIColor(named: "Color1")
    }
    
    func configureInstaLogo() {
        instaLogo.image = UIImage(named: "instagram")
        instaLogo.contentMode = .scaleAspectFit
    }
    
    func configureInstaHandle() {
        instaHandle.text = "@cfrey9"
        instaHandle.textColor = .gray
        instaHandle.font = UIFont(name: "Poppins-Regular", size: 16)
        instaHandle.textAlignment = .left
    }
    
    func configureLinkedinLogo() {
        linkedinLogo.image = UIImage(named: "linkedin")
        linkedinLogo.contentMode = .scaleAspectFit
    }
    
    func configureLinkedinHandle() {
        linkedinHandle.text = "linkedin.com/in/carolinerfrey/"
        linkedinHandle.textColor = .gray
        linkedinHandle.font = UIFont(name: "Poppins-Regular", size: 16)
        linkedinHandle.textAlignment = .left
    }
    
    func setConstraints() {
        box.translatesAutoresizingMaskIntoConstraints = false
        pin.translatesAutoresizingMaskIntoConstraints = false
        location.translatesAutoresizingMaskIntoConstraints = false
        divider.translatesAutoresizingMaskIntoConstraints = false
        instaLogo.translatesAutoresizingMaskIntoConstraints = false
        instaHandle.translatesAutoresizingMaskIntoConstraints = false
        linkedinLogo.translatesAutoresizingMaskIntoConstraints = false
        linkedinHandle.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            box.topAnchor.constraint(equalTo: topAnchor),
            box.leadingAnchor.constraint(equalTo: leadingAnchor),
            box.trailingAnchor.constraint(equalTo: trailingAnchor),
            box.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            pin.topAnchor.constraint(equalTo: box.topAnchor, constant: 15),
            pin.leadingAnchor.constraint(equalTo: box.leadingAnchor, constant: 34),
            
            location.topAnchor.constraint(equalTo: box.topAnchor, constant: 10),
            location.leadingAnchor.constraint(equalTo: pin.trailingAnchor, constant: 5),
            
            divider.widthAnchor.constraint(equalTo: box.widthAnchor),
            divider.heightAnchor.constraint(equalToConstant: 2),
            divider.topAnchor.constraint(equalTo: location.bottomAnchor, constant: 10),
            
            instaLogo.topAnchor.constraint(equalTo: divider.topAnchor, constant: 10),
            instaLogo.leadingAnchor.constraint(equalTo: box.leadingAnchor, constant: 34),
            instaLogo.heightAnchor.constraint(equalToConstant: 20),
            instaLogo.widthAnchor.constraint(equalToConstant: 20),
            
            instaHandle.topAnchor.constraint(equalTo: instaLogo.topAnchor),
            instaHandle.leadingAnchor.constraint(equalTo: instaLogo.trailingAnchor, constant: 5),
            
            linkedinLogo.topAnchor.constraint(equalTo: instaLogo.topAnchor, constant: 30),
            linkedinLogo.leadingAnchor.constraint(equalTo: box.leadingAnchor, constant: 34),
            linkedinLogo.heightAnchor.constraint(equalToConstant: 20),
            linkedinLogo.widthAnchor.constraint(equalToConstant: 20),
            
            linkedinHandle.topAnchor.constraint(equalTo: linkedinLogo.topAnchor),
            linkedinHandle.leadingAnchor.constraint(equalTo: linkedinLogo.trailingAnchor, constant: 5),

        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

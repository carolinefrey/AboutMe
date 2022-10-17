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
    
    private func configureBox() {
        box.backgroundColor = UIColor(named: "Color2")
        box.layer.cornerRadius = 30
    }
    
    private func configurePin() {
        let largeConfig = UIImage.SymbolConfiguration(pointSize: 20, weight: .regular, scale: .large)
        pin.image = UIImage(systemName: "mappin", withConfiguration: largeConfig)
        pin.tintColor = .black
        pin.contentMode = .left
    }
    
    private func configureLocation() {
        location.text = "Denver, CO"
        location.textColor = UIColor(named: "Color1")
        location.font = UIFont(name: "Poppins-Regular", size: 18)
        location.textAlignment = .left
    }
    
    private func configureDivider() {
        divider.backgroundColor = UIColor(named: "Color1")
        divider.layer.opacity = 0.3
    }
    
    private func configureInstaLogo() {
        instaLogo.image = UIImage(named: "instagram")
        instaLogo.contentMode = .scaleAspectFit
    }
    
    private func configureInstaHandle() {
        instaHandle.text = "@cfrey9"
        instaHandle.textColor = UIColor(named: "Color1")
        instaHandle.font = UIFont(name: "Poppins-Regular", size: 16)
        instaHandle.textAlignment = .left
    }
    
    private func configureLinkedinLogo() {
        linkedinLogo.image = UIImage(named: "linkedin")
        linkedinLogo.contentMode = .scaleAspectFit
    }
    
    private func configureLinkedinHandle() {
        linkedinHandle.text = "linkedin.com/in/carolinerfrey/"
        linkedinHandle.textColor = UIColor(named: "Color1")
        linkedinHandle.font = UIFont(name: "Poppins-Regular", size: 16)
        linkedinHandle.textAlignment = .left
    }
    
    private func setConstraints() {
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
            
            divider.widthAnchor.constraint(equalTo: box.widthAnchor, constant: -30),
            divider.heightAnchor.constraint(equalToConstant: 2),
            divider.topAnchor.constraint(equalTo: location.bottomAnchor, constant: 10),
            divider.centerXAnchor.constraint(equalTo: box.centerXAnchor),
            
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


//
//  MainUIView.swift
//  AboutMe
//
//  Created by Caroline Frey on 10/17/22.
//

import UIKit

class MainUIView: UIView {
    
    let imageAndNameView = ImageAndNameView()
    let locationAndSocialsView = LocationAndSocialsView()
    let interestsView = InterestsView()
    let whyiOSView = WhyiOSView()
//    lazy var sayHiButton = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(imageAndNameView)
        addSubview(locationAndSocialsView)
        addSubview(interestsView)
        addSubview(whyiOSView)
        
        //addSubview(sayHiButton)
        
        //configureSayHiButton()
        setConstraints()
    }
    
//    private func configureSayHiButton() {
//        sayHiButton.setTitle("Say hi!", for: .normal)
//        sayHiButton.setTitleColor(UIColor(named: "Color1"), for: .normal)
//        sayHiButton.tintColor = UIColor(named: "Color2")
//        sayHiButton.configuration = .filled()
//        sayHiButton.layer.cornerRadius = 30
//    }
//    
    private func setConstraints() {
        imageAndNameView.translatesAutoresizingMaskIntoConstraints = false
        locationAndSocialsView.translatesAutoresizingMaskIntoConstraints = false
        interestsView.translatesAutoresizingMaskIntoConstraints = false
        whyiOSView.translatesAutoresizingMaskIntoConstraints = false
        //sayHiButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            imageAndNameView.topAnchor.constraint(equalTo: topAnchor, constant: 34),
            imageAndNameView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 34),
            imageAndNameView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -34),
            imageAndNameView.heightAnchor.constraint(equalToConstant: 250),
            
            locationAndSocialsView.topAnchor.constraint(equalTo: imageAndNameView.bottomAnchor, constant: 10),
            locationAndSocialsView.leadingAnchor.constraint(equalTo: imageAndNameView.leadingAnchor),
            locationAndSocialsView.trailingAnchor.constraint(equalTo: imageAndNameView.trailingAnchor),
            locationAndSocialsView.heightAnchor.constraint(equalToConstant: 120),
            
            interestsView.topAnchor.constraint(equalTo: locationAndSocialsView.bottomAnchor, constant: 10),
            interestsView.leadingAnchor.constraint(equalTo: locationAndSocialsView.leadingAnchor),
            interestsView.trailingAnchor.constraint(equalTo: locationAndSocialsView.trailingAnchor),
            interestsView.heightAnchor.constraint(equalToConstant: 120),
            
            whyiOSView.topAnchor.constraint(equalTo: interestsView.bottomAnchor, constant: 10),
            whyiOSView.leadingAnchor.constraint(equalTo: interestsView.leadingAnchor),
            whyiOSView.trailingAnchor.constraint(equalTo: interestsView.trailingAnchor),
            whyiOSView.heightAnchor.constraint(equalToConstant: 340),
            
//            sayHiButton.topAnchor.constraint(equalTo: whyiOSView.bottomAnchor, constant: 10),
//            sayHiButton.widthAnchor.constraint(equalToConstant: 150),
//            sayHiButton.heightAnchor.constraint(equalToConstant: 50),
//            sayHiButton.centerXAnchor.constraint(equalTo: whyiOSView.centerXAnchor),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

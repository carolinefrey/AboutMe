//
//  ImageAndNameView.swift
//  AboutMe
//
//  Created by Caroline Frey on 10/15/22.
//

import UIKit

class ImageAndNameView: UIView {

    let imageBackground = UIView()
    let image = UIImageView()
    let name = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(imageBackground)
        addSubview(image)
        addSubview(name)

        configureImageBackground()
        configureImage()
        configureName()
        
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureImageBackground() {
        imageBackground.backgroundColor = UIColor(named: "Color1")
        imageBackground.layer.cornerRadius = 30
    }
    
    private func configureImage() {
        image.image = UIImage(named: "me")
        image.contentMode = .scaleAspectFit
    }
    
    private func configureName() {
        name.text = "Caroline Frey"
        name.textColor = .white
        name.font = UIFont(name: "Poppins-Medium", size: 30)
        name.textAlignment = .center
    }
    
    private func setConstraints() {
        imageBackground.translatesAutoresizingMaskIntoConstraints = false
        image.translatesAutoresizingMaskIntoConstraints = false
        name.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            imageBackground.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            imageBackground.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageBackground.trailingAnchor.constraint(equalTo: trailingAnchor),
            imageBackground.heightAnchor.constraint(equalTo: heightAnchor),
            
            image.topAnchor.constraint(equalTo: imageBackground.topAnchor, constant: 30),
            image.leadingAnchor.constraint(equalTo: imageBackground.leadingAnchor, constant: 30),
            image.trailingAnchor.constraint(equalTo: imageBackground.trailingAnchor, constant: -30),
            image.heightAnchor.constraint(equalTo: imageBackground.heightAnchor, multiplier: 0.6),
            
            name.topAnchor.constraint(equalTo: image.bottomAnchor),
            name.bottomAnchor.constraint(equalTo: imageBackground.bottomAnchor),
            name.leadingAnchor.constraint(equalTo: imageBackground.leadingAnchor),
            name.trailingAnchor.constraint(equalTo: imageBackground.trailingAnchor)
        ])
    }
}


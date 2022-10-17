//
//  ViewController.swift
//  AboutMe
//
//  Created by Caroline Frey on 10/15/22.
//

import UIKit

class ViewController: UIViewController {

    let imageAndNameView = ImageAndNameView()
    let locationAndSocialsView = LocationAndSocialsView()
    let interestsView = InterestsView()
    let whyiOSView = WhyiOSView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(named: "Background")

        view.addSubview(imageAndNameView)
        view.addSubview(locationAndSocialsView)
        view.addSubview(interestsView)
        view.addSubview(whyiOSView)
        
        setConstraints()
    }
    
    private func setConstraints() {
        imageAndNameView.translatesAutoresizingMaskIntoConstraints = false
        locationAndSocialsView.translatesAutoresizingMaskIntoConstraints = false
        interestsView.translatesAutoresizingMaskIntoConstraints = false
        whyiOSView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            imageAndNameView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            imageAndNameView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 34),
            imageAndNameView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -34),
            imageAndNameView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.4),
        
            locationAndSocialsView.topAnchor.constraint(equalTo: imageAndNameView.bottomAnchor, constant: 10),
            locationAndSocialsView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 34),
            locationAndSocialsView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -34),
            locationAndSocialsView.heightAnchor.constraint(equalToConstant: 120),
            
            interestsView.topAnchor.constraint(equalTo: locationAndSocialsView.bottomAnchor, constant: 10),
            interestsView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 34),
            interestsView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -34),
            interestsView.heightAnchor.constraint(equalToConstant: 100),
            
            whyiOSView.topAnchor.constraint(equalTo: interestsView.bottomAnchor, constant: 10),
            whyiOSView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 34),
            whyiOSView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -34),
            whyiOSView.heightAnchor.constraint(equalToConstant: 100),
        ])
    }
}

extension ViewController: UITextViewDelegate {
    func textView(_ textView: UITextView, shouldInteractWith URL: URL, in characterRange: NSRange, interaction: UITextItemInteraction) -> Bool {
        UIApplication.shared.open(URL)
        return false
    }
}

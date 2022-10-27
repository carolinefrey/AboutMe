//
//  ViewController.swift
//  AboutMe
//
//  Created by Caroline Frey on 10/15/22.
//

import UIKit

class ViewController: UIViewController {
    
    var scrollView = UIScrollView()
    var mainUIView = MainUIView()
    lazy var sayHiButton = UIButton(type: .custom)
    
    let alert = UIAlertController(title: "Hey! 👋🏼", message: "Nice to meet you.", preferredStyle: .alert)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "Background")
        
        view.addSubview(scrollView)
        scrollView.addSubview(mainUIView)
        scrollView.addSubview(sayHiButton)
        
        configureScrollView()
        configureButton()
        configureAlert()
        setConstraints()
    }
    
    private func configureScrollView() {
        scrollView.frame = view.frame
        scrollView.contentSize = CGSize(width: view.frame.size.width, height: 1000)
        scrollView.isScrollEnabled = true
        scrollView.alwaysBounceVertical = true
    }
    
    private func configureButton() {
        sayHiButton.setTitle("Say hi!", for: .normal)
        sayHiButton.setTitleColor(UIColor(named: "Color1"), for: .normal)
        sayHiButton.tintColor = UIColor(named: "Color2")
        sayHiButton.configuration = .filled()
        sayHiButton.layer.cornerRadius = 30
        
        sayHiButton.addTarget(self, action: #selector(sayHiButtonPressed), for: .touchUpInside)
    }
    
    private func configureAlert() {
        alert.addAction(UIAlertAction(title: "Done", style: .default))
    }
    
    private func setConstraints() {
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        mainUIView.translatesAutoresizingMaskIntoConstraints = false
        sayHiButton.translatesAutoresizingMaskIntoConstraints = false

        
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            mainUIView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            mainUIView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            mainUIView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            mainUIView.heightAnchor.constraint(equalTo: view.heightAnchor),
            
            sayHiButton.topAnchor.constraint(equalTo: mainUIView.bottomAnchor, constant: 50),
            sayHiButton.widthAnchor.constraint(equalToConstant: 150),
            sayHiButton.heightAnchor.constraint(equalToConstant: 50),
            sayHiButton.centerXAnchor.constraint(equalTo: mainUIView.centerXAnchor),
        ])
    }
    
    @objc func sayHiButtonPressed() {
        self.present(alert, animated: true, completion: nil)
    }
}

extension ViewController: UITextViewDelegate {
    func textView(_ textView: UITextView, shouldInteractWith URL: URL, in characterRange: NSRange, interaction: UITextItemInteraction) -> Bool {
        UIApplication.shared.open(URL)
        return false
    }
}

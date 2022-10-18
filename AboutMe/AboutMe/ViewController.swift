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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(named: "Background")
        
        view.addSubview(scrollView)
        scrollView.addSubview(mainUIView)
        
        configureScrollView()
        setConstraints()
    }
    
    private func configureScrollView() {
        scrollView.contentSize = view.bounds.size
        scrollView.isScrollEnabled = true
        scrollView.alwaysBounceVertical = true
        scrollView.frame = mainUIView.bounds
    }

    private func setConstraints() {
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        mainUIView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            mainUIView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            mainUIView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            mainUIView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            mainUIView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            mainUIView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
        ])
    }
}
//
//extension ViewController: UITextViewDelegate {
//    func textView(_ textView: UITextView, shouldInteractWith URL: URL, in characterRange: NSRange, interaction: UITextItemInteraction) -> Bool {
//        UIApplication.shared.open(URL)
//        return false
//    }
//}

//
//  HomeViewController.swift
//  About Me
//
//  Created by Thierno Diallo on 7/13/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    // MARK: - PROPERTIES
    
    let scrollView: UIScrollView = {
        let scroll = UIScrollView()
        scroll.translatesAutoresizingMaskIntoConstraints = false
        scroll.backgroundColor = .gray
        return scroll
    }()
    
    let stackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.alignment = .center
        stack.distribution = .fill
        return stack
    }()
    
    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .gray
        return view
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Thierno Diallo"
        label.font = .systemFont(ofSize: 24, weight: .bold)
        label.textColor = .black
        label.backgroundColor = .gray
        return label
    }()
    
    
    let pronounLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "he/him/his"
        label.font = .systemFont(ofSize: 18, weight: .bold)
        label.textColor = .black
        label.backgroundColor = .gray
        return label
    }()
    
    let jobLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Profession: Actor, Developer and VC"
        label.font = .systemFont(ofSize: 16, weight: .bold)
        label.textColor = .black
        label.backgroundColor = .gray
        return label
    }()
    
    
    
    let secondView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.layer.cornerRadius = 15
        return view
    }()
    
    
    let lineView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .gray
        return view
    }()
    
    let secondaryLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    let imageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "ThiernoDiallo")
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    
    
    let locationIcon: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "📍"
        label.font = .systemFont(ofSize: 30)
        return label
    }()
    
    let location: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "New York, NY"
        label.font = .boldSystemFont(ofSize: 20)
        return label
    }()
    
    
    let twitterSign: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "twitterlogoo")
        image.layer.cornerRadius = 100
        return image
    }()
    
    let twitterHandle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "@tdiallo1996_"
        label.font = .systemFont(ofSize: 15)
        label.textColor = .systemGray2
        return label
    }()
    
    let linkedinSign: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "linkicon")
        image.layer.cornerRadius = 100
        return image
    }()
    
    let link: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "www.linkedin.com/in/thiernodiallo1996/"
        label.font = .systemFont(ofSize: 15)
        label.textColor = .lightGray
        return label
    }()
    
    
    
    
    
    // MARK: - LIFECYCLE
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setUpUI()
    }
    
    
    
    
    // MARK: - METHODS
    
    func setUpUI() {
        setUpScrollView()
        setUpContainer()
        setUpLabel()
        setUpImage()
        setUpSecondView()
    }
    
    //Added the scrollView to our view hierarchy
    func setUpScrollView() {
        view.addSubview(scrollView)
        
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
    
    
    func setUpContainer() {
        scrollView.addSubview(containerView)
        
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: scrollView.safeAreaLayoutGuide.topAnchor, constant: 30),
            containerView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 40),
            containerView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -40),
            containerView.heightAnchor.constraint(equalToConstant: 310),
            containerView.widthAnchor.constraint(equalToConstant: 350)
            
        ])
    }
    
    func setUpImage() {
        containerView.addSubview(imageView)
        
        NSLayoutConstraint.activate([
            imageView.heightAnchor.constraint(equalToConstant: 150),
            imageView.widthAnchor.constraint(equalToConstant: 200),
            imageView.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            imageView.centerXAnchor.constraint(equalTo: containerView.centerXAnchor)
        ])
    }
    
    //Setting up our labels
    func setUpLabel() {
        scrollView.addSubview(stackView)
        stackView.addArrangedSubview(nameLabel)
        stackView.addArrangedSubview(jobLabel)
        stackView.addArrangedSubview(pronounLabel)
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: containerView.bottomAnchor, constant: 10),
            stackView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor)
            
        ])
    }
    
    func setUpSecondView() {
        scrollView.addSubview(secondView)
        secondView.addSubview(lineView)
        secondView.addSubview(locationIcon)
        secondView.addSubview(location)
        secondView.addSubview(twitterSign)
        secondView.addSubview(twitterHandle)
        secondView.addSubview(linkedinSign)
        secondView.addSubview(link)
        
        NSLayoutConstraint.activate([
        secondView.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 10),
        secondView.leadingAnchor.constraint(equalTo: stackView.leadingAnchor),
        secondView.trailingAnchor.constraint(equalTo: stackView.trailingAnchor),
        secondView.heightAnchor.constraint(equalToConstant: 150),
        secondView.widthAnchor.constraint(equalToConstant: 350),
        
        lineView.topAnchor.constraint(equalTo: secondView.topAnchor, constant: 40),
        lineView.trailingAnchor.constraint(equalTo: secondView.trailingAnchor),
        lineView.leadingAnchor.constraint(equalTo: secondView.leadingAnchor),
        lineView.heightAnchor.constraint(equalToConstant: 5),
        
        
        locationIcon.topAnchor.constraint(equalTo: secondView.topAnchor, constant: 5),
        locationIcon.leadingAnchor.constraint(equalTo: secondView.leadingAnchor),
        
        location.leadingAnchor.constraint(equalTo: locationIcon.trailingAnchor),
        location.topAnchor.constraint(equalTo: secondView.topAnchor, constant: 9),
        
        twitterSign.topAnchor.constraint(equalTo: lineView.bottomAnchor, constant: 10),
        twitterSign.leadingAnchor.constraint(equalTo: secondView.leadingAnchor, constant: 10),
        twitterSign.heightAnchor.constraint(equalToConstant: 30),
        twitterSign.widthAnchor.constraint(equalToConstant: 30),
        
        twitterHandle.leadingAnchor.constraint(equalTo: twitterSign.trailingAnchor,constant: 10),
        twitterHandle.topAnchor.constraint(equalTo: lineView.bottomAnchor, constant: 15),
        
        linkedinSign.topAnchor.constraint(equalTo: twitterSign.bottomAnchor, constant: 10),
        linkedinSign.leadingAnchor.constraint(equalTo: twitterSign.leadingAnchor),
        linkedinSign.heightAnchor.constraint(equalToConstant: 30),
        linkedinSign.widthAnchor.constraint(equalToConstant: 30),
        
        link.topAnchor.constraint(equalTo: twitterSign.bottomAnchor, constant: 15),
        link.leadingAnchor.constraint(equalTo: linkedinSign.trailingAnchor, constant: 15)
        
    ])
        
    }
    
    
}

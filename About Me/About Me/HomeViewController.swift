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
        scroll.isScrollEnabled = true
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
    let contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .gray
        return view
    }()
    let imageHolder: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .black
        view.layer.cornerRadius = 20
        return view
    }()
    let imageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "ThiernoDiallo")
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Thierno Diallo"
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.textColor = .white
        return label
    }()
    let pronounLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "he/him/his"
        label.font = .systemFont(ofSize: 12, weight: .bold)
        label.textColor = .systemGray
        return label
    }()
    let jobLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Actor/Developer"
        label.font = .systemFont(ofSize: 15, weight: .bold)
        label.textColor = .white
        return label
    }()
    
    // Second View
    
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
    
    
    // Third View
    
    let thirdView: UIView =  {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.layer.cornerRadius = 15
        return view
    }()
    let heartLabel: UILabel = {
        let label = UILabel()
        label.text = "❤️"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let loveExample: UILabel = {
        let label = UILabel()
        label.text = "Acting, food, ML, ARKit + RealityKit"
        label.font = .systemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let kitchenIcon: UILabel = {
        let label = UILabel()
        label.text = "👨🏾‍🍳"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let food: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Burgers + Fries"
        label.font = .systemFont(ofSize: 15)
        return label
    }()
    let tvIcon: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "📺"
        return label
    }()
    let shows: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Oppenheimer"
        label.font = .systemFont(ofSize: 15)
        return label
    }()
    
    
    // Fourth View
    
    let fourthView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.layer.cornerRadius = 15
        return view
    }()
    let labelDescription: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "I Like iOS Development because...."
        label.font = .boldSystemFont(ofSize: 18)
        return label
    }()
    let paragraphDescription: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = """
You love iOS development because it enables you to transform your creative ideas into tangible and user-friendly mobile applications. The robust and intuitive development environment provided by Apple empowers you to craft elegant and seamless experiences for millions of users worldwide. You enjoy the simplicity and efficiency of Swift, Apple's programming language, which allows you to write clean and expressive code. The constant innovation and regular updates from Apple keep you engaged, providing new tools and features to explore and implement in your projects. Additionally, the supportive and vibrant iOS developer community offers a wealth of knowledge and resources, making the learning journey enjoyable and rewarding. The sense of accomplishment and joy you feel when seeing your apps come to life on iPhones and iPads further fuels your passion for iOS development, driving you to continuously improve your skills and build remarkable applications.
"""
        label.font = .systemFont(ofSize: 14)
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        return label
    }()

    // Button
    
    let introButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .orange
        button.setTitle("Say Hi 🤚🏾", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 15
        button.addTarget(HomeViewController.self, action: #selector(buttonPressed(_:)), for: .touchUpInside)
        return button
    }()
    
    @objc private func buttonPressed(_ sender: UIButton) {
        let alertController = UIAlertController(title: "Thanks for clicking", message: "Nice to Meet You!!", preferredStyle: .alert)
        
        alertController.addAction(UIAlertAction(title: "Ok", style: .cancel))
        
        present(alertController, animated: true, completion: nil)
    }
    

    
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
        setUpImageHolder()
        setUpSecondView()
        setUpThirdView()
        setUpFourthView()
        setUpButton()

    }
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
        scrollView.addSubview(contentView)
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.heightAnchor.constraint(equalTo: scrollView.heightAnchor, constant: 300),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor, constant: 0)
            
        ])
    }
    func setUpImageHolder() {
        contentView.addSubview(imageHolder)
        imageHolder.addSubview(imageView)
        
       
        imageHolder.addSubview(stackView)
        stackView.addArrangedSubview(nameLabel)
        stackView.addArrangedSubview(jobLabel)
        stackView.addArrangedSubview(pronounLabel)
         
        NSLayoutConstraint.activate([
        imageHolder.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
        imageHolder.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 25),
        imageHolder.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -25),
        imageHolder.heightAnchor.constraint(equalToConstant: 400),
        imageHolder.widthAnchor.constraint(equalToConstant: 300),
        
        imageView.centerXAnchor.constraint(equalTo: imageHolder.centerXAnchor),
        imageView.centerYAnchor.constraint(equalTo: imageHolder.centerYAnchor),
        imageView.heightAnchor.constraint(equalToConstant: 250),
        imageView.widthAnchor.constraint(equalToConstant: 150),
        
        stackView.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 10),
        stackView.leadingAnchor.constraint(equalTo: imageView.leadingAnchor),
        stackView.trailingAnchor.constraint(equalTo: imageView.trailingAnchor)
        
        
        ])
    }

    func setUpSecondView() {
        contentView.addSubview(secondView)
        secondView.addSubview(lineView)
        secondView.addSubview(locationIcon)
        secondView.addSubview(location)
        secondView.addSubview(twitterSign)
        secondView.addSubview(twitterHandle)
        secondView.addSubview(linkedinSign)
        secondView.addSubview(link)
        
        NSLayoutConstraint.activate([
        secondView.topAnchor.constraint(equalTo: imageHolder.bottomAnchor, constant: 10),
        secondView.leadingAnchor.constraint(equalTo: imageHolder.leadingAnchor),
        secondView.trailingAnchor.constraint(equalTo: imageHolder.trailingAnchor),
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
    
    func setUpThirdView() {
        contentView.addSubview(thirdView)
        thirdView.addSubview(heartLabel)
        thirdView.addSubview(loveExample)
        thirdView.addSubview(kitchenIcon)
        thirdView.addSubview(food)
        thirdView.addSubview(tvIcon)
        thirdView.addSubview(shows)
        
        NSLayoutConstraint.activate([
         thirdView.topAnchor.constraint(equalTo: secondView.bottomAnchor, constant: 10),
         thirdView.leadingAnchor.constraint(equalTo: secondView.leadingAnchor),
         thirdView.trailingAnchor.constraint(equalTo: secondView.trailingAnchor),
         thirdView.heightAnchor.constraint(equalToConstant: 100),
         thirdView.widthAnchor.constraint(equalToConstant: 350),
         
         
         heartLabel.topAnchor.constraint(equalTo: thirdView.topAnchor, constant: 10),
         heartLabel.leadingAnchor.constraint(equalTo: thirdView.leadingAnchor, constant: 10),
         heartLabel.heightAnchor.constraint(equalToConstant: 20),
         heartLabel.widthAnchor.constraint(equalToConstant: 20),
         
         loveExample.leadingAnchor.constraint(equalTo: heartLabel.trailingAnchor,constant: 10),
         loveExample.topAnchor.constraint(equalTo: thirdView.topAnchor, constant: 10),
         
         kitchenIcon.topAnchor.constraint(equalTo: heartLabel.bottomAnchor, constant: 15),
         kitchenIcon.leadingAnchor.constraint(equalTo: thirdView.leadingAnchor, constant: 10),
         
         food.leadingAnchor.constraint(equalTo: kitchenIcon.trailingAnchor, constant: 10),
         food.topAnchor.constraint(equalTo: loveExample.bottomAnchor, constant: 20),
         
         tvIcon.leadingAnchor.constraint(equalTo: food.trailingAnchor, constant: 25),
         tvIcon.topAnchor.constraint(equalTo: loveExample.bottomAnchor, constant: 20),
         
         shows.leadingAnchor.constraint(equalTo: tvIcon.trailingAnchor, constant: 10),
         shows.topAnchor.constraint(equalTo: loveExample.bottomAnchor, constant: 20)
         
         
         
        ])
        
    }
    
    func setUpFourthView() {
        contentView.addSubview(fourthView)
        fourthView.addSubview(labelDescription)
        fourthView.addSubview(paragraphDescription)
        
        NSLayoutConstraint.activate([
        fourthView.topAnchor.constraint(equalTo: thirdView.bottomAnchor, constant: 10),
        fourthView.leadingAnchor.constraint(equalTo: thirdView.leadingAnchor),
        fourthView.trailingAnchor.constraint(equalTo: thirdView.trailingAnchor),
        fourthView.heightAnchor.constraint(equalToConstant: 400),
        fourthView.widthAnchor.constraint(equalToConstant: 350),
        
        
        labelDescription.topAnchor.constraint(equalTo: fourthView.topAnchor, constant: 10),
        labelDescription.leadingAnchor.constraint(equalTo: fourthView.leadingAnchor, constant: 10),
        labelDescription.trailingAnchor.constraint(equalTo: fourthView.trailingAnchor),
        
        paragraphDescription.topAnchor.constraint(equalTo: labelDescription.bottomAnchor, constant: 10),
        paragraphDescription.leadingAnchor.constraint(equalTo: fourthView.leadingAnchor, constant: 5),
        paragraphDescription.trailingAnchor.constraint(equalTo: fourthView.trailingAnchor, constant: -10),
        
        
        ])
    }
    
    func setUpButton() {
        contentView.addSubview(introButton)
        
        NSLayoutConstraint.activate([
            introButton.topAnchor.constraint(equalTo: fourthView.bottomAnchor, constant: 20),
            introButton.leadingAnchor.constraint(equalTo: fourthView.leadingAnchor, constant: 40),
            introButton.trailingAnchor.constraint(equalTo: fourthView.trailingAnchor, constant: -40),
            introButton.widthAnchor.constraint(equalToConstant: 60),
            introButton.heightAnchor.constraint(equalToConstant: 70)
            
            
        ])
    }
    
}

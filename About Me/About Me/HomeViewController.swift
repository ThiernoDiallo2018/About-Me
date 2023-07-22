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
            scroll.backgroundColor = .white
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
        
        let label: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.text = "Thierno Diallo"
            label.font = .systemFont(ofSize: 24, weight: .bold)
            label.textColor = .black
            return label
        }()
        
        let label2: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.text = "he/him/his"
            label.font = .systemFont(ofSize: 18, weight: .bold)
            label.textColor = .black
            return label
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
        
        // MARK: - LIFECYCLE
        
        override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .white
            
            setUpScrollView()
            setUpContainer()
            setUpLabel()
            setUpImage()
        }
        
        // MARK: - METHODS
        
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
        
        /*
        func setUpStackView() {
            scrollView.addSubview(stackView)
            
            NSLayoutConstraint.activate([
                stackView.topAnchor.constraint(equalTo: scrollView.topAnchor),
                stackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
                stackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
                stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor)
            ])
        }
        
        */
        
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
            stackView.addArrangedSubview(label)
            stackView.addArrangedSubview(label2)
            
            NSLayoutConstraint.activate([
                stackView.topAnchor.constraint(equalTo: containerView.bottomAnchor, constant: 10),
                stackView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 50),
                stackView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -50)
        
            ])
        }
        
        
    
    }

//
//  CatWelcomeViewController.swift
//  Miawouf
//
//  Created by Nelson Pires Da Silva on 8/1/23.
//

import UIKit

class CatWelcomeViewController: UIViewController {
    
    // MARK: - Property
    private lazy var welcomeCatLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        return label
    }()
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.setupStyle()
        self.setupSubViews()
        self.setupLayout()
    }
    
    // MARK: - Private
    
    private func setupStyle() {
        self.view.backgroundColor = UIColor(red: 0.85, green: 0.94, blue: 0.99, alpha: 1)
        
        self.welcomeCatLabel.text = "Pouah, Les chats ne sont pas les bienvenus ici"
        self.welcomeCatLabel.font = UIFont.boldSystemFont(ofSize: 24)
        self.welcomeCatLabel.textAlignment = .center
    }
    
    private func setupSubViews() {
        self.view.addSubview(welcomeCatLabel)
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            welcomeCatLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            welcomeCatLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            welcomeCatLabel.leadingAnchor.constraint(greaterThanOrEqualTo: view.leadingAnchor, constant: 20),
            welcomeCatLabel.trailingAnchor.constraint(lessThanOrEqualTo: view.trailingAnchor, constant: -20)
       ])
    }
    
    // MARK: - Action
}

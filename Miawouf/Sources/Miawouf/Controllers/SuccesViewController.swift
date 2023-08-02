//
//  SuccesViewController.swift
//  Miawouf
//
//  Created by Nelson Pires Da Silva on 8/1/23.
//

import UIKit

class SuccesViewController: UIViewController {
    
    // MARK: - Property
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var backButton: UIButton = {
        let btn = UIButton()
        btn.addTarget(self, action: #selector(backButtonTapped(_:)), for: .touchUpInside)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    private lazy var newDogButton: UIButton = {
       let btn = UIButton()
        btn.addTarget(self, action: #selector(addNewDog(_:)), for: .touchUpInside)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
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

        self.titleLabel.text = "Création du compte validé"
        self.titleLabel.font = UIFont.boldSystemFont(ofSize: 24)
        self.titleLabel.textAlignment = .center
        
        self.backButton.setTitle("X", for: .normal)
        self.backButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 40)
        self.backButton.setTitleColor(.red, for: .normal)
        
        self.newDogButton.setTitle("Ajouter un nouveau chien", for: .normal)
        self.newDogButton.backgroundColor = .red
    }
    
    private func setupSubViews() {
        self.view.addSubview(titleLabel)
        self.view.addSubview(backButton)
        self.view.addSubview(newDogButton)
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            self.titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            self.titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            self.backButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            self.backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            self.backButton.widthAnchor.constraint(equalToConstant: 40),
            self.backButton.heightAnchor.constraint(equalToConstant: 40),
            
            self.newDogButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            self.newDogButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
            self.newDogButton.widthAnchor.constraint(equalToConstant: 300),
            self.newDogButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    // MARK: - Action
    
    @objc private func backButtonTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @objc private func addNewDog(_ sender: Any) {
        self.dismiss(animated: true) {
            NotificationCenter.default.post(name: NSNotification.Name("NeedToPop"), object: nil)
        }
    }
}

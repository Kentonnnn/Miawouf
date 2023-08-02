//
//  TestViewController.swift
//  Miawouf
//
//  Created by Nelson Pires Da Silva on 7/22/23.
//

import UIKit
class TestViewController: UIViewController {

    // MARK: - Property
    
    private lazy var buttonAction: UIButton = {
        let btn = UIButton()
        btn.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        return btn
    }()
    
    private let resultLabel = UILabel()
    
    // MARK: - LifeCycle
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.setupStyle()
        self.setupSubViews()
        self.setupLayout()
    }

    // MARK: - Private
    
    private func setupStyle() {
        self.view.backgroundColor = .white
        
        self.resultLabel.translatesAutoresizingMaskIntoConstraints = false
        self.buttonAction.translatesAutoresizingMaskIntoConstraints = false
    
        self.resultLabel.text = "Result"
        
        self.buttonAction.backgroundColor = .red
    }
    
    private func setupSubViews() {
        self.view.addSubview(resultLabel)
        
        self.view.addSubview(buttonAction)
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            self.resultLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.resultLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            
            self.buttonAction.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.buttonAction.topAnchor.constraint(equalTo: self.resultLabel.bottomAnchor, constant: 10)
        ])
    }
    
    // MARK: - Action
    
    @objc private func buttonTapped(_ sender: Any) {
        print("Button tapped")
    }
}

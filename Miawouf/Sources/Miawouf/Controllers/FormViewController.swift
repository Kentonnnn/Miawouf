//
//  FormViewController.swift
//  Miawouf
//
//  Created by Nelson Pires Da Silva on 8/1/23.
//

import UIKit

class FormViewController: UIViewController {
    
    // MARK: - Property
    private lazy var buttonValidation: UIButton = {
        let btn = UIButton()
        btn.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()

    // MARK: - LifCycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.setupStyle()
        self.setupSubViews()
        self.setupLayout()
        self.registerNotification()
    }
    
    // MARK: - Private
    
    private func setupStyle() {
        self.view.backgroundColor = UIColor(red: 0.85, green: 0.94, blue: 0.99, alpha: 1)
        
        self.buttonValidation.setTitle("Valider", for: .normal)
        self.buttonValidation.backgroundColor = .red
    }
    
    private func setupSubViews() {
        self.view.addSubview(buttonValidation)
    }
    
    private func registerNotification() {
        NotificationCenter.default.addObserver(self, selector: #selector(needToPop(_:)), name: NSNotification.Name("NeedToPop"), object: nil)
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            self.buttonValidation.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            self.buttonValidation.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50), // Ajustez la valeur du constant selon vos besoins pour définir la marge inférieure.
            self.buttonValidation.widthAnchor.constraint(equalToConstant: 200), // Ajustez la largeur du bouton selon vos besoins.
            self.buttonValidation.heightAnchor.constraint(equalToConstant: 50) // Ajustez la hauteur du bouton selon vos besoins.
            ])
    }
    
    // MARK: - Action
    @objc private func buttonTapped(_ sender: Any) {
        print("Button tapped")
        
        let successVC = SuccesViewController()
        successVC.modalPresentationStyle = .fullScreen
        self.present(successVC, animated: true)
    }
    
    @objc private func needToPop(_ notification: NSNotification) {
        self.navigationController?.popViewController(animated: false)
    }
}

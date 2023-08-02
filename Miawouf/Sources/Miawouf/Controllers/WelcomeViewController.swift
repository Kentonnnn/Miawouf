//
//  WelcomeViewController.swift
//  Miawouf
//
//  Created by Nelson Pires Da Silva on 7/19/23.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    var button = UIButton(type: .custom)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        changeBackgroundColor()
        createButtonMain()
        addImageAboveButton()
        
        // Navigation barre
        title = "Welcome"
        // add color
    }
    
    // Label
    func addImageAboveButton() {
        let image = UIImage(named: "Miawouf")
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(imageView)
            
            // Ajouter les contraintes pour l'image view
        NSLayoutConstraint.activate([
            imageView.bottomAnchor.constraint(equalTo: button.topAnchor, constant: -20),
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.heightAnchor.constraint(equalToConstant: 350), // Ajustez la hauteur de l'image view selon vos besoins
            imageView.widthAnchor.constraint(equalToConstant: 275) // Ajustez la largeur de l'image view selon vos besoins
        ])
    }
    
    // Change Background Color
    func changeBackgroundColor() {
        let colorGreen = UIColor(red: 0.85, green: 0.94, blue: 0.99, alpha: 1)
        view.backgroundColor = colorGreen
    }
    
    // Create button
    func createButtonMain() {
        // Button creation
        button.translatesAutoresizingMaskIntoConstraints = false
        
        // Add image to the button
        let image = UIImage(named: "Paw")
        button.setImage(image, for: .normal)
        
        // Add target action to handle tap event
        button.addTarget(self, action: #selector(pawButtonTapped(_:)), for: .touchUpInside)
        
        // Add button to the principal view
        view.addSubview(button)
        
        // Center the button
        NSLayoutConstraint.activate([
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    // MARK: - Action
    
    @objc private func pawButtonTapped(_ sender: Any) {
        let formVC = FormViewController()
        navigationController?.pushViewController(formVC, animated: true)
    }
}

//
//  ViewController.swift
//  Digimon
//
//  Created by Valeria Rodriguez on 28/03/2023.
//

import UIKit

class ViewController: UIViewController {
    
    private let onboardingImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "digimon_logo")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let textLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.textAlignment = .center
        label.text = "API de Digimon"
        label.font = UIFont(name: "Arial Rounded MT Bold", size:26)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var skipOnboardingButton: UIButton = {
        var config = UIButton.Configuration.filled()
        config.title = "Pulsa aqui para continuar"
        config.subtitle = "Onboarding"
        
        let button = UIButton(type: .system)
        button.addTarget(self, action: #selector(showMessage), for: .touchUpInside)
        button.configuration = config
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        view.addSubview(onboardingImageView)
        view.addSubview(textLabel)
        view.addSubview(skipOnboardingButton)
        //title = "DIGIMON"
        
        NSLayoutConstraint.activate([
            onboardingImageView.bottomAnchor.constraint(equalTo: textLabel.topAnchor, constant: -32),
            onboardingImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            onboardingImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                                                        
            textLabel.bottomAnchor.constraint(equalTo: skipOnboardingButton.topAnchor, constant: -42),
            textLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            textLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            textLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            
            skipOnboardingButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            skipOnboardingButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    @objc func showMessage(){
        print("Skip onboarding")
    }


}


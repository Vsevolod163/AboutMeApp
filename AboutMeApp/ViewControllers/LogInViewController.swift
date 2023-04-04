//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Vsevolod Lashin on 04.04.2023.
//

import UIKit

final class LogInViewController: UIViewController {
    
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction private func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    @IBAction func logInButtonTapped() {
        
        performSegue(withIdentifier: "showWelcomeTBC", sender: nil)
    }
    
}

extension UIView {
    func addGradientLayer() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = [UIColor.red.cgColor, UIColor.blue.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        layer.insertSublayer(gradientLayer, at: 0)
    }
}

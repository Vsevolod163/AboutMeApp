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
    
    private let userName = "Alexey"
    private let password = "123"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTF.text = userName
        passwordTF.text = password
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        viewControllers.forEach { viewController in
            if let firstVC = viewController as? WelcomeViewController {
                firstVC.userName = userNameTF.text
            }
        }
    }
    
    @IBAction private func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    
    @IBAction func forgotData(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            showAlert(with: "No problem!", and: "Your username is Alexey 😊")
        default:
            showAlert(with: "No problem!", and: "Your password is 123 😊")
        }
    }
    
    
    @IBAction func logInButtonTapped() {
        guard userNameTF.text == userName, passwordTF.text == password else {
            showAlert(
                with: "Invalid username or password 😔",
                and: "Please, enter correct username and password"
            )
            
            return
        }
        performSegue(withIdentifier: "showWelcomeTBC", sender: nil)
    }
    
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(
            title: title, 
            message: message, 
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTF.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

extension UIView {
    func addGradientLayer() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = [UIColor.systemRed.cgColor, UIColor.systemBlue.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        layer.insertSublayer(gradientLayer, at: 0)
    }
}

extension LogInViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTF {
            passwordTF.becomeFirstResponder()
        } else {
            logInButtonTapped()
        }
        
        return true
    }
}

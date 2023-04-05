//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Vsevolod Lashin on 04.04.2023.
//

import UIKit

final class LogInViewController: UIViewController {
    
    // MARK: - properties
    
    @IBOutlet private var userNameTF: UITextField!
    @IBOutlet private var passwordTF: UITextField!
    
    private let user = User.getUser()
    
    // MARK: - viewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTF.text = user.userName
        passwordTF.text = user.password
    }
    
    // MARK: - segue functions
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        viewControllers.forEach { viewController in
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.user = user
            } else if let navigationVC = viewController as? UINavigationController {
                guard let aboutMeVC = navigationVC.topViewController as? AboutMeViewController else { return }
                aboutMeVC.user = user
            }
        }
    }
    
    @IBAction private func unwind(for segue: UIStoryboardSegue) {
        passwordTF.text = ""
    }
    
    // MARK: - buttons functions
    
    @IBAction func forgotData(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            showAlert(
                with: "No problem!",
                and: "Your username is \(user.userName ?? "") 😊"
            )
        default:
            showAlert(
                with: "No problem!",
                and: "Your password is \(user.password ?? "") 😊"
            )
        }
    }
    
    
    @IBAction func logInButtonTapped() {
        guard userNameTF.text == user.userName, passwordTF.text == user.password else {
            showAlert(
                with: "Invalid username or password 😔",
                and: "Please, enter correct username and password"
            )
            
            return
        }
        performSegue(withIdentifier: "showWelcomeTBC", sender: nil)
    }
    
    // MARK: - showAlert
    
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

// MARK: - extensions

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

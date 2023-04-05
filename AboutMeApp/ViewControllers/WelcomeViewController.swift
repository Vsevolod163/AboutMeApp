//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Vsevolod Lashin on 04.04.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
        
    @IBOutlet private var welcomeLabel: UILabel!
    @IBOutlet private var myNameLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addGradientLayer()
        
        welcomeLabel.text = "Welcome, \(user.userName ?? "")!"
        myNameLabel.text = "My name is \(user.person.name) \(user.person.surname)"
    }
    
}

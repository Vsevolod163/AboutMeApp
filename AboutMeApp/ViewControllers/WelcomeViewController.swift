//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Vsevolod Lashin on 04.04.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
        
    @IBOutlet var welcomeLabel: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addGradientLayer()
        
        welcomeLabel.text = "Welcome, \(userName ?? "")!"
    }
    
}

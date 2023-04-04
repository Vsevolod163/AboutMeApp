//
//  InfoViewController.swift
//  AboutMeApp
//
//  Created by Vsevolod Lashin on 05.04.2023.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet var infoLabel: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addGradientLayer()
        infoLabel.text = """
                Hello, \(userName ?? "")! 😊
            
                My name is Vsevolod Lashin. I am 27 years old.
                I graduated from the Samara State University of Economics with a master's degree in world economics with honors.
                I work as a Sales Manager for a company that sells automotive paints produced by the Dutch multinational company Akzonobel. Several of my projects were the implementation of the Akzonobel software packages for various automotive workshops.
                I've always liked math and programming, so I decided to start studying programming a year ago and I want to start working in this industry in the near future.
                My favourite hobbies are: programming, watching movies, listening to music. Also i love to play volleyball, basketball, table tennis.
                Looking forward to hearing from you! 😊
            """
    }
}

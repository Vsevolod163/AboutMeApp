//
//  InfoViewController.swift
//  AboutMeApp
//
//  Created by Vsevolod Lashin on 05.04.2023.
//

import UIKit

final class InfoViewController: UIViewController {

    @IBOutlet private var infoLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addGradientLayer()
        infoLabel.text = """
                Hello, \(user.userName ?? "")! 😊
            
                My name is \(user.person.name) \(user.person.surname). I am \(getMyAge()) years old.
                I graduated from the Samara State University of Economics with a master's degree in world economics with honors.
                Now I am working as a Sales Manager for a company that sells automotive paints produced by the Dutch multinational company AkzoNobel. Several of my projects were the implementation of the Akzonobel software packages for various automotive workshops.
                I've always liked math and programming, so I decided to start studying it a year ago and I want to start working in this industry in the near future.
                My favourite hobbies are: programming, watching movies, listening to music. Also i love to play volleyball, basketball, table tennis.
                Looking forward to hearing from you! 😊
            """
    }
    
    private func getMyAge() -> String {
        let dateFormatter = DateFormatter()
        var myAge = ""
        dateFormatter.dateFormat = "dd.MM.yyyy"
        
        if let date = dateFormatter.date(from: user.person.dateOfBirth) {
            let range = date..<Date.now
            myAge = range.formatted(.components(style: .wide, fields: [.year]))
        }
        
        return myAge.replacingOccurrences(of: "лет", with: "")
    }
}

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
        infoLabel.text = user.person.info
    }

}

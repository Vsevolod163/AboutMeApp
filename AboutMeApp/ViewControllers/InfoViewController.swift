//
//  InfoViewController.swift
//  AboutMeApp
//
//  Created by Vsevolod Lashin on 05.04.2023.
//

import UIKit

final class InfoViewController: UIViewController {

    @IBOutlet private var infoLabel: UILabel!
    
    @IBOutlet var fullNameNabigationItem: UINavigationItem!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addGradientLayer()
        fullNameNabigationItem.title = "\(user.person.fullName) Info"
        infoLabel.text = user.person.info
    }
}

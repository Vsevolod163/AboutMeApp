//
//  AboutMeViewController.swift
//  AboutMeApp
//
//  Created by Vsevolod Lashin on 04.04.2023.
//

import UIKit

class AboutMeViewController: UIViewController {

    @IBOutlet var myPhotoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myPhotoImageView.layer.cornerRadius = myPhotoImageView.frame.width / 2
        view.addGradientLayer()
    }
}

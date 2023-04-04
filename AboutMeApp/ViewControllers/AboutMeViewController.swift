//
//  AboutMeViewController.swift
//  AboutMeApp
//
//  Created by Vsevolod Lashin on 04.04.2023.
//

import UIKit

class AboutMeViewController: UIViewController {

    @IBOutlet var myPhotoImageView: UIImageView!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myPhotoImageView.layer.cornerRadius = myPhotoImageView.frame.width / 2
        view.addGradientLayer()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let infoVC = segue.destination as? InfoViewController else { return }
        
        infoVC.userName = userName
    }
}

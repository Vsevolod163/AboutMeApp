//
//  AboutMeViewController.swift
//  AboutMeApp
//
//  Created by Vsevolod Lashin on 04.04.2023.
//

import UIKit

final class AboutMeViewController: UIViewController {

    @IBOutlet private var myPhotoImageView: UIImageView!
    
    @IBOutlet private var nameLabel: UILabel!
    @IBOutlet private var surnameLabel: UILabel!
    @IBOutlet private var dateOfBirthLabel: UILabel!
    @IBOutlet private var gitHubLabel: UILabel!
    
    @IBOutlet private var myNameNavigationItem: UINavigationItem!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myPhotoImageView.layer.cornerRadius = myPhotoImageView.frame.width / 2
        view.addGradientLayer()
        
        myNameNavigationItem.title = "\(user.person.name) \(user.person.surname)"
        nameLabel.text = "Name: \(user.person.name)"
        surnameLabel.text = "Surname: \(user.person.surname)"
        dateOfBirthLabel.text = "Date of Birth: \(user.person.dateOfBirth)"
        gitHubLabel.text = "GitHub: \(user.person.gitHub)"
        myPhotoImageView.image = UIImage(named: user.person.photo)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let infoVC = segue.destination as? InfoViewController else { return }
        
        infoVC.user = user
    }
}

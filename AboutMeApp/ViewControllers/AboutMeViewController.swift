//
//  AboutMeViewController.swift
//  AboutMeApp
//
//  Created by Vsevolod Lashin on 04.04.2023.
//

import UIKit

final class AboutMeViewController: UIViewController {

    @IBOutlet private var photoImageView: UIImageView!
    
    @IBOutlet private var nameLabel: UILabel!
    @IBOutlet private var surnameLabel: UILabel!
    @IBOutlet private var dateOfBirthLabel: UILabel!
    @IBOutlet private var gitHubLabel: UILabel!
    
    @IBOutlet private var fullNameNavigationItem: UINavigationItem!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photoImageView.layer.cornerRadius = photoImageView.frame.width / 2
        view.addGradientLayer()
        
        fullNameNavigationItem.title = user.person.fullName
        nameLabel.text = "Name: \(user.person.name)"
        surnameLabel.text = "Surname: \(user.person.surname)"
        dateOfBirthLabel.text = "Date of Birth: \(user.person.dateOfBirth)"
        gitHubLabel.text = "GitHub: \(user.person.gitHub)"
        photoImageView.image = UIImage(named: user.person.photo)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let infoVC = segue.destination as? InfoViewController else { return }
        
        infoVC.user = user
    }
}

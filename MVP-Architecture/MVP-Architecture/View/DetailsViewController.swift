//
//  DetailsViewController.swift
//  MVP-Architecture
//
//  Created by chandrashekhar_h on 26/06/23.
//

import UIKit

class DetailsViewController: UIViewController {

    var name: String?
    
    @IBOutlet weak var nameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = name {
            nameLabel.text = "Name: \(name)"
        }
    }

    @IBAction func backButtonTapped(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
}

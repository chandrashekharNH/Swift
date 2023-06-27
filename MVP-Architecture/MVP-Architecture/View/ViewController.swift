//
//  ViewController.swift
//  MVP-Architecture
//
//  Created by chandrashekhar_h on 26/06/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func navigateButtonTapped(_ sender: UIButton) {
           performSegue(withIdentifier: "showDetails", sender: nil)
       }

       override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           if segue.identifier == "showDetails" {
               if let detailsViewController = segue.destination as? DetailsViewController {
                   // Pass any necessary data to the destination view controller
                   detailsViewController.name = "John Doe"
               }
           }
       }

}


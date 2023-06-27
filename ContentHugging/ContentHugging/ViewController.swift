//
//  ViewController.swift
//  ContentHugging
//
//  Created by chandrashekhar_h on 19/11/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet  var topView:UIView!
    @IBOutlet  var middleView:UIView!
    @IBOutlet  var bottomView:UIView!


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Timer.scheduledTimer(withTimeInterval: 2, repeats: false) { [self] (_) in
               // TODO: - whatever you want
               middleView.isHidden = true
                topView.backgroundColor = .blue
                bottomView.backgroundColor = .yellow
            }
    }

}


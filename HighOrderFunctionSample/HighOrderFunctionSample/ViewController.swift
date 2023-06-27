//
//  ViewController.swift
//  HighOrderFunctionSample
//
//  Created by chandrashekhar_h on 01/05/23.
//

import UIKit

class ViewController: UIViewController {
    
    var list = [2,4,6,7,9,0,10]

    override func viewDidLoad() {
        super.viewDidLoad()
        let multiplier = list.map{$0*2}
        print(multiplier)
         
    }


}


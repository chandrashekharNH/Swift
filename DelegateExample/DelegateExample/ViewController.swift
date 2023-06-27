//
//  ViewController.swift
//  DelegateExample
//
//  Created by chandrashekhar_h on 01/05/23.
//

import UIKit

protocol ProjectReport:AnyObject {
    func didFinishedProjectA(detailReport:String);
}


class Dev_A {
    weak var manager:ProjectReport?
    func ProjectAInfo(){
        let a = "Project A Info"
        self.manager!.didFinishedProjectA(detailReport:a)
    }
}

class Dev_B {
    weak var manager:ProjectReport?
    func ProjectBInfo(){
        let a = "Project B Info"
        self.manager!.didFinishedProjectA(detailReport:a)
    }
}

class Manager:ProjectReport {
    var developerA:Dev_A
    var developerB:Dev_B
    init(devA:Dev_A,devB:Dev_B){
        self.developerA = devA
        self.developerB = devB
        self.developerA.manager = self
        self.developerB.manager = self
    }
    
    func writeProjectAInfo(){
        self.developerA.ProjectAInfo()
        self.developerB.ProjectBInfo()
    }
    
    func didFinishedProjectA(detailReport:String){
        debugPrint(detailReport)
    }
}



class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let a = Manager(devA: Dev_A(), devB: Dev_B())
        a.writeProjectAInfo()
    }
}


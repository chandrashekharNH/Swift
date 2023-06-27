//
//  ViewController.swift
//  ProtocolExample
//
//  Created by chandrashekhar_h on 30/04/23.
//

import UIKit

protocol Car {
    var name:String{set get}
    func startCar()
    func stopCar()
}

class ACar:Car {
    var name:String
     init(name: String) {
        self.name = name
    }
    
    func startCar(){
        print("A Car Started")
    }
    func stopCar(){
        print("A Car stopped")
    }
}

class BCar:Car {
    
    var name:String
     init(name: String) {
        self.name = name
    }
    
    func startCar(){
        print("B Car Started")
    }
    func stopCar(){
        print("B Car stopped")
    }
}

class Person {
    var name:String
    init(name: String) {
        self.name = name
    }
    
    func driveMyCar(a:Car){
        print("I am driving \(a.name) CAR")
    }
}


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let p = Person(name: "CS")
        let a = ACar(name: "A")
        let b = BCar(name: "B")
        p.driveMyCar(a: a)
        
    }
}


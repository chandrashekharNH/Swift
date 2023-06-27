import UIKit

struct Person{
    var name:String {
        
        willSet{
            print("New Val: \(newValue)")
        }
        didSet{
            print("Old Val: \(oldValue)")
        }
    }
}


var p1 = Person(name: "Old Test ")
p1.name = "New"



struct Car{
    var model:String
    let NoOfSeats:Int
    var NoofGears:Int
    var currentGear:Int
    
    init (model:String,NoOfSeats:Int,NoofGears:Int){
        self.model = model
        self.NoOfSeats = NoOfSeats
        self.NoofGears = NoofGears
        self.currentGear = 0;
    }

    
     mutating func upGear(){
         self.currentGear = self.currentGear + 1
    }
    
    mutating func downGear(){
        self.currentGear = self.currentGear - 1
   }

}


var a = Car(model: "V", NoOfSeats: 4, NoofGears: 5)
print(a.currentGear)
a.upGear()
print(a.currentGear)
a.downGear()
print(a.currentGear)



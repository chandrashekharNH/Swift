import UIKit

enum AnimalType{
    case Cat,Dog,Lion,Tiger
}

class Animal {
    var name:String
    var type:AnimalType
    init(type:AnimalType,name:String) {
        self.type = type
        self.name = name
    }
    
    func printMe(){
        print(name,type)
    }
}
 

class Cat:Animal{
    var lifeSpine:Int = 0
    
   override func printMe(){
        print(name,type,lifeSpine)
    }

}



class Lion:Animal{
    var lifeSpine:Int = 0
    
    override func printMe(){
         print(name,type,lifeSpine)
     }
}

let a = Animal(type: .Cat,name: "Animal")


let b = Cat(type: .Cat ,name: "Cat")
b.lifeSpine  = 4

let c = Lion(type: .Lion,name: "LION")
c.lifeSpine  = 10


print(a.printMe())
print(b.printMe())
print(c.type,c.lifeSpine)


 

import UIKit

class Person{
    var name:String
    var mobile:Mobile
    init(name:String,mobile:Mobile){
        self.name = name
        self.mobile = mobile
    }
}


protocol Mobile{
    var os:String{get}
    var cost:String{get}
    var color:String{get}
}

class Apple:Mobile{
    var os: String
    var cost: String
    var color: String
    init(os:String,cost:String,color:String) {
        self.os = os
        self.cost = cost
        self.color = color
    }
}


class Samsung:Mobile{
    var os: String
    var cost: String
    var color: String
    init(os:String,cost:String,color:String) {
        self.os = os
        self.cost = cost
        self.color = color
    }
}

//Factory design pattern
enum Brand{
    case Apple,Samsung,redMe
}

class MobileFactory{
    static func makeMobile(brand:Brand)->Mobile{
        var mobile:Mobile
        switch(brand){
        case .Apple:
            mobile = Apple(os: "iOS", cost: "10000", color: "Black")
        case .Samsung:
            mobile = Apple(os: "Android", cost: "100", color: "Gray")
        case .redMe:
            mobile = Apple(os: "RedMe", cost: "10", color: "white")
        }
        return mobile
    }
}

let cs:Person = Person(name: "CS", mobile: MobileFactory.makeMobile(brand: .Apple))
print("\(cs.name) device detail")
print("==================")
print(cs.mobile.os)
print(cs.mobile.cost)
print(cs.mobile.color)

print("\n")
let charvi:Person = Person(name: "Charvi", mobile: MobileFactory.makeMobile(brand: .Samsung))
print("\(charvi.name) device detail")
print("==================")
print(charvi.mobile.os)
print(charvi.mobile.cost)
print(charvi.mobile.color)


print("\n")
let charvi2:Person = Person(name: "Charvi 2", mobile: MobileFactory.makeMobile(brand: .redMe))
print("\(charvi2.name) device detail")
print("==================")
print(charvi2.mobile.os)
print(charvi2.mobile.cost)
print(charvi2.mobile.color)

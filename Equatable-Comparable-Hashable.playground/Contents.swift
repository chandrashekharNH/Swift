import UIKit

  //Equatable
/*
 - A type that can be compared for  values
 - Struct == meyhod is option.Only some specific properties should compare then override the method
 - Class ==  method is must and mandatory
 */


struct student:Equatable{
    var name:String
    var marks:Int
    
    static func ==  (lhrs:Self,rhrs:Self) -> Bool{
        lhrs.marks == rhrs.marks
    }
}
 let stdOne = student(name:"chandru", marks: 90)
 let stdTwo = student(name:"chandru", marks: 90)

if(stdOne == stdTwo){
    print("Both are Same student in Struct")
}else{
    print("Differnt student in Struct")
}


class studentClass:Equatable{
    var name:String
    var marks:Int
    init(name:String,marks:Int) {
        self.name = name
        self.marks = marks
    }
    
    static func ==  (lhrs:studentClass,rhrs:studentClass) -> Bool{
        lhrs.marks == rhrs.marks
    }
}
 let stdOneinClass = studentClass(name:"chandru", marks: 90)
 let stdTwoinClass = studentClass(name:"chandru", marks: 90)

if(stdOneinClass == stdTwoinClass){
    print("Both are Same student in Class")
}else{
    print("Differnt student in Class")
}


//Comparable
/*
- A type that can be compared using the relational operator such as < > <= and >=
 - Comparable is conforms to Equatable protocol so == also works with comparable
*/

struct studentTwo:Comparable{
    static func < (lhs: studentTwo, rhs: studentTwo) -> Bool {
        lhs.marks == rhs.marks
    }
    var name:String
    var marks:Int
}
 let compareStdOne = studentTwo(name:"chandru", marks: 10)
 let compareStdTwo = studentTwo(name:"chandru", marks: 90)

if(compareStdOne > compareStdTwo){
    print("stdOne greater")
}else{
    print("stdTwo greater")
}


//Hashable
/*
 -   A type that can be hashed by hasher to produce hash integer value
 -  if two object has same value then hash value will be same for both instance/object
 -  Each run hash value will change
*/

struct Person:Hashable{
    var name:String
    var age:Int
    
    //check only age properties values on object and generate hash int value
    public func hash(into hasher: inout Hasher){
        hasher.combine(age)
    }
}

let p1 = Person(name: "CS", age: 40)
let p2 = Person(name: "CS", age: 30)

print("Hash Value for p1 \(p1.hashValue)")
print("Hash Value for p2 \(p2.hashValue)")


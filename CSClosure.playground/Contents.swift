import UIKit

struct Student{
    let name:String
    var Score:Int
}


let studentList = [Student(name: "Raj", Score: 70),
                   Student(name: "Ram", Score: 40),
                   Student(name: "S", Score: 50),
                   Student(name: "D", Score: 99),
                   Student(name: "W", Score: 89),]



var topersList:(Student)->Bool = { return $0.Score>80 }

 
//print("Topper")
//let topperList = studentList.filter(topersList)
//for s in topperList {
//    print(s)
//}
//
//print("Sort By score")
//let sortBtScore = studentList.sorted{$0.name < $1.name}
//for s in sortBtScore {
//    print(s)
//}


let luckyNumber = [22,4,56,7,8,9,2,57,9,125,9,5,21,4,43,33]
var evenNumber:(Int)->Bool = { return $0%2==0 }

let evenNumbers = luckyNumber.filter(evenNumber)

let ascendingOrder = luckyNumber.sorted{$0<$1}
for s in ascendingOrder {
    switch(s%7==0){
    case true :  print("\(s) my luckky number")
    case false:  print(s)
    }
}
 

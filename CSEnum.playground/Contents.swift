import UIKit

let list = ["C","V","F","H","Q","A","W","W","Q"]

print(list)
print(list.count)
var mySet = Set(list)

print(mySet)


//Fizz Buzz


for num in 1...100{
    
    switch(num%3==0, num%5==0){
    case (true, false): print("Fizz")
    case (false, true): print("Buzz")
    case (true, true): print("FizzBuzz")
    case (false, false): print(num)
    }
}





func printMyDetail(name:String,Age:Int,Address:String,isMajor:Int)-> (String,Int){
    return (name+Address,Age+isMajor)
}

print(printMyDetail(name: "CS", Age: 38, Address: "ssfdsfdbshhdsb", isMajor: 1))


func addME(for number:Int) {    
    print(number+number)
}

addME(for: 10)

import UIKit

func getHighestNo<T:Comparable>(n1:T,n2:T)->T{
    if(n1>n2){
        return n1
    }else {
        return n2
    }
}


debugPrint(getHighestNo(n1: 3.0,n2: 0))


func whatTypeisIt<T>(input:T){
    print("Type is: \(type(of: input))")
}


let list = [3,5,6]

let dic = ["name":"Raju"]

whatTypeisIt(input: 1)
whatTypeisIt(input: 1.3)
whatTypeisIt(input: "stsrrss")
whatTypeisIt(input: list)
whatTypeisIt(input: dic)

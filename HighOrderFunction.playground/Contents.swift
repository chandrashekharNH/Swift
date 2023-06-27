import UIKit

 //Map Works on collection.returns new list
var list = [1,4,6,6,nil,9]
let multiplier = list.map{$0}
print("map: \(multiplier)")



//compactMap removes the nil
let multiplierCompact = list.compactMap{$0}
print("compactMap: \(multiplierCompact)")


//flatMap merges list of collection into single collection
var listOfArray = [[1,4],[6,9],[nil,10]]
let SingleArray = listOfArray.flatMap{$0}
print("flatMap: \(SingleArray)")


//Sorted sort the collection, Nil should not not exists in collection
var list2 = [1,4,6,6,9]
let sorted = list2.sorted{$0<$1}
print("sorted: \(sorted)")


//reduce, filter - One operation on collection
var list3 = [1,4,6,6,9]
let reduce = list3.reduce(0,{$0+$1})
let filter = list3.filter({$0>4 && $0<8})


print("reduce: \(reduce)")
print("filter: \(filter)")

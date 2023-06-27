import UIKit

var colorList = ["Red","Green","Yallow","Green","Green","Yallow","Gray","Purple","Gray","purple","Yallow","Green","Yallow"]



func getMax(list:[String])->(Int?,[String]){
    var topColors:[String] = []
    var TopColorDic:[String:Int] = [:]
    
    for color in list {
        TopColorDic[color,default: 0] += 1
    }
    let maxCount = TopColorDic.values.max()
    for (color,count) in TopColorDic {
        if(TopColorDic[color] == maxCount){
            topColors.append(color)
        }
    }
    return(maxCount,topColors)
}


print(getMax(list: colorList))


func getMostCommonColorSolution1 (array: [String]) -> (Int?, [String] ){
    var topColors:[String] = []
    var dic:[String:Int] = [:]
    for color in array {
        dic[color,default:0] += 1
    }
    let maxVal = dic.values.max()
    
    for (color,count) in dic {
        if dic[color] == maxVal{
            topColors.append(color)
        }
    }
    return (maxVal,topColors)
}


func getMostCommonColorSolution2(array: [String]) -> ([String:Int],String) {
     let groupedDic = Dictionary(grouping: array, by: { $0 })
     let newDic = groupedDic.mapValues() { $0.count }
     return (newDic, newDic.sorted(by: { $0.value < $1.value }).last?.key ?? "")
}


print(getMostCommonColorSolution1(array: colorList))

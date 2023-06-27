import UIKit

class Player:NSObject,NSCopying{
    
    
    var name:String
    var score:Double
    init(name:String,score:Double) {
        self.name = name
        self.score = score
    }
//    //Create separate copy.This is prototype design pattern Common approach
//    func copy()->Player{
//        return Player(name: self.name, score: self.score)
//    }
    
    // //Create separate copy.This is prototype design pattern. Apples standard approach
    func copy(with zone: NSZone? = nil) -> Any {
        return Player(name: self.name, score: self.score)
    }
}


let player = Player(name: "Raj", score: 20.229)

//Refer to player
let player2 = player

//Creates separet copy of player
let player3 = player.copy() as! Player
player.name = "CS"

print(player.name)
print(player2.name)
print(player3.name)

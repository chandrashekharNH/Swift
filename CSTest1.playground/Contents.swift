import UIKit

let CSDeptStudents = ["raj","cs","vd"]
let ISDeptStudents = ["ram","raghu","kk"]

let findMe = "kk"

for name in chain(CSDeptStudents, ISDeptStudents) {
    print(name)
}

let allStudents = chain(CSDeptStudents,ISDeptStudents)



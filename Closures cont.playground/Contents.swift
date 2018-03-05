
import UIKit

let array = [6,2,3,9,4,1]



let result = array.map({$0 + 1})

let newArray = array.map{"\($0)"}

print(result)

print(newArray )

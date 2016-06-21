//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
str = "Hello, swift"

let constStr = str

var arrayOfInts: Array<Int>
arrayOfInts = [1,5,7]

let nameByParkingSpace = [11: "Alice", 27: "Bob"]

var name = nameByParkingSpace[11]

if let space13Assignee = nameByParkingSpace[11]{
    print("key 11 was \(space13Assignee)")
}else{
    print("not there")
}


var emptyString = String()
var emptyArrayOfInts = [Int]()
var emptySetOfFloats = Set<Float>()

for (space, name) in nameByParkingSpace{
    let permit = "Space \(space): \(name)"
}


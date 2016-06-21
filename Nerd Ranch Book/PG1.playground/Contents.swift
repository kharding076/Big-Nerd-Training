//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
str = "hello swift"
let conStr = str
var nextYear: Int
var bodyTemp: Float
var hasPet: Bool
var arrayOfInts: [Int]
var dictionariesOfCapitolsByCountry: [String:String]
var winningLotteryNumbers: Set<Int>
let number = 42
let meaningOfLife = String(number)
let fmStation = 91.1
var countingUp = ["one","two"]
countingUp.count
countingUp.append("three")
let secondElement = countingUp[1]
let nameParkingSpace = [13: "Alice", 27: "Bob"]
let space13Assignee: String? = nameParkingSpace[13]
let space42Assignee: String? = nameParkingSpace[42]

if let space = nameParkingSpace[13]{
    print(space)
}
let emtyString = String()
emtyString.isEmpty
let emptyArrayOfInts = [Int]()
let emptyArrayOfFloats = Set<Float>()
let defaultNumber = Int()
let defaultBool = Bool()
let availableRooms = Set([205,411,412])
let defaultFloat = Float()
let floatFromLiteral = Float(3.14)
let easyPie = 3.14
let floatFromDouble = Float(easyPie)
let floatingPie: Float = 3.14

var reading1: Float?
var reading2: Float?
var reading3: Float?

reading1 = 9.8
reading2 = 9.2
reading3 = 9.7

//let avgReading = (reading1!+reading2!+reading3!)/3

if let r1 = reading1, r2 = reading2, r3 = reading3{
    let avgReading = (reading1!+reading2!+reading3!)/3
}else{
    let errorString = "nil"
}

enum PieType{
    case Apple
    case Cherry
    case Pecan
}

let favoritePie = PieType.Apple









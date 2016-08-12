//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


var myVariable = 123    //variable
let myConstant = 123456 //constant

let anExplicit : Int = 2

myVariable+=1000

//myConstant = 2 //Cannot assing a value to a constant

var someVariable : Int
//someVariable + = 4 // error: not initial value

var sampleText = "Welcome!"
print (sampleText)

var anOptionalInt : Int? = nil
anOptionalInt = 55

if anOptionalInt != nil {
    print ("It has a value:\(anOptionalInt!)")
} else {
    print ("It hasn't a value!")
}

var unwrappedOptionalInteger : Int!
unwrappedOptionalInteger = 4

var anInteger = 40
let aString = String(anInteger)


//Tuples
let aTuple = (1, "YES", 34, "NO")
let firstNumber = aTuple.0
let secondText = aTuple.3

//adding labels
let anotherTuple = (aNumber : 1111, aString : "My String")
let theOtherNumber = anotherTuple.aNumber

//Arrays
let arrayOfIntegers : [Int] = [1,2,3,4,5,6]
let mixedArray = [6,4, "String"]

var testArray = [1,2,3,4,5]
testArray.append(6)
testArray.insert(7, atIndex: 6)
testArray.removeLast()
testArray.removeAtIndex(1)
testArray.count

var arrayOfStrings = ["one","two","three","four"]

//Dictionary
var crew = [
    "Captain" : "TPA",
    "First Officer" : "TPB",
    "Cabin Hostess" : "TPC",
    "Cabin Hostes" : "TPD"]

crew["Captain"]
crew["Intern"] = "BBB"

crew.description

var aNumberDic = [1:"value"]
aNumberDic[21]="ok"
aNumberDic.description






































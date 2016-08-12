//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

if 1+1 == 2 {
    print ("Addition is ok")
}

//Looping FOR
let loopArray = [1,2,3,4,5]
var loopSum = 0
for number in loopArray {
    loopSum += number
}
print (loopSum)

var firstCount = 0
for index in 1 ... 10 {
    firstCount += 1
}
print(firstCount)

//WHILE
var countDown = 10
while countDown > 0 {
    countDown -= 1
}

//REPEAT
var countUp = 0
repeat {
    countUp+=2
} while countUp<10000
print(countUp)

//verify value
var conditionalString : String? = "A String"
if let theString = conditionalString {
    print ("The String is '\(theString)' ")
} else {
    print ("The String is nil")
}

//SWITCH
let integerSwitch = 3
switch integerSwitch {
case 0 : print("one")
case 1 : print("two")
default : print ("default :) ")
}











































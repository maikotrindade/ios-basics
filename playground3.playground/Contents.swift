//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func firstfunction() {
    print("Hello!")
}

firstfunction()

func secondFunction() -> Int {
    return 12345
}

secondFunction()

func thirdFunc (firstValue : Int, secondValue: Int) -> Int {
    return firstValue + secondValue
}

thirdFunc(100, 900)

//thirdFunc(100, secondValue: 123)

func forthFunction(firstValue : Int, secondValue: Int) -> (doubled : Int, qradrupled : Int) {
    
    return (firstValue * 2, secondValue * 4)
}

forthFunction(2, 2)

forthFunction(2, 2).0

forthFunction(2, 2).qradrupled

//array of numbers
func addNumbers(numbers: Int...) -> Int {
    var total = 0
    for number in numbers {
        total += number
    }
    return total
}

addNumbers(1,2,3,4,5,6,7,8,9,10)


//params
func swapValues(inout firstValue: Int, inout secondValue: Int) {
    let tempValue = firstValue
    firstValue = secondValue
    secondValue = tempValue
}

var swap1 = 10
var swap2 = 20
swapValues(&swap1, &swap2)
print("\(swap1), \(swap2)")

//variable as Func
var numbersFunc: (Int...) -> Int
numbersFunc = addNumbers
numbersFunc(2,3,4,5,6,7)

//func as param
func timesThree(number: Int) -> Int{
    return number*3
}

//func doSomethingToNumber (aNumber: Int, thingToDo: (Int)->Int)->Int {
//    return thingsToDo(aNumber)
//}

//doSomethingToNumber(4, thingToDo: timesThree)


func createAdder(numberToAdd: Int) -> (Int) -> Int {
    func adder(number:Int) -> Int{
        return number + numberToAdd
    }
    return adder
}

var addTwo = createAdder(2)
addTwo(2)


func createInc(incrementAmount : Int) -> () -> Int {
    var amount = 0
    func incrementor () -> Int {
        amount += incrementAmount
        return amount
    }
    return incrementor
}

var incrementByTen = createInc(10)
incrementByTen()
incrementByTen()

class Vehicle {
    var color : String?
    var maxSpeed = 80
    
    func description() -> String {
        return "A \(self.color) vehicle"
    }
    
    func travel() {
        print("Traveling ar \(maxSpeed) kph")
    }
}

var redVehicle = Vehicle()
redVehicle.color = "Red"
redVehicle.maxSpeed = 95
































































































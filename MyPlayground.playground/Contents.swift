import UIKit

var str = "Hello, playground"

let value = arc4random_uniform(100)
print("--> \(value)")

let coordinates = (4,6)

let x = coordinates.0
let y = coordinates.1

let coordinatesNamed = (x:2, y:3)

let x2 = coordinatesNamed.x
let y2 = coordinatesNamed.y

let (x3, y3) = coordinatesNamed
x3
y3

let yes = true
let no = false
let isFourGreaterthanFive = 4 > 5

if isFourGreaterthanFive {
    print("--> 참")
} else {
    print("--> 거짓")
}


//boolean Examples
let a = 5, b = 10

if a>b {
    print("---> a가 크다")
} else {
    print("---> b가 크다")
}


//boolean Examples2
let Name1 = "Jin"
let Name2 = "Jason"

let isTwoNameSame = Name1 == Name2

if isTwoNameSame {
    print("이름이 같다")
} else {
    print("이름이 다르다")
}


let isJason = Name2 == "Jason"
let isMale = false
let jasonAndMale = isJason && isMale
let jasonOrMale = isJason || isMale


let greetingMessage: String = isJason ? "Hello Jason" : "Hi Somebody"

print("Msg: \(greetingMessage)")


// ----Scope

var hours = 50
let payPerHour = 10000
var salary = 0

if hours > 40 {
    let extraHours = hours - 40
    salary += extraHours * payPerHour * 2
    hours -= extraHours
}
salary += hours * payPerHour


//switch
let pet = "bird"

switch pet {
case "dog", "cat", "bird":
    print("집동물이네요")
default:
    print("잘 모르겠습니다")
}


let num = 20
switch num {
case _ where num % 2 == 0:
    print("짝수")
default:
    print("홀수")
}



/*
var coordinate = (x: 0, y: 0)
for coordinate in 0...10 {
    print("\(coordinate)")
    coordinate[0]  += 1
}

switch coordinate {
case (0,0):
    print("원점")
case (0,_):
    print("x축이네요")
case (_,0):
    print("y축이네요")
default:
    print("원점, x/y축을 제외한 평면 상의 점이네요")
}
*/


let coordinate = (x: 10, y: 10)

switch coordinate {
case (0, 0):
    print("원점입니다")
case (let x, 0):
    print("x축 위의 점입니다, x:\(x)")
case (0, let y):
    print("y축 위의 점입니다, y:\(y)")
case (let x, let y) where x == y:
    print("x랑 y랑 같음 x,y = \(x),\(y)")
case (let x, let y):
    print("좌표 어딘가 x,y = \(x),\(y)")
}

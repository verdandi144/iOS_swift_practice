//: A UIKit based Playground for presenting user interface
  
import UIKit

func printName() {
    print("---> My name is Sangmin")
}

printName()

//param 1개
// 숫자를 받아서 10을 곱해서 출력한다
func printMultipleOfTen(value: Int) {
    print("\(value) * 10 = \(value*10)")
}
printMultipleOfTen(value: 5)



//param 2
//물건값과 갯수를 받아서 전체 금약을 출력하는 함수
func ToTotalPrice(price: Int, cnt:Int) {
    print("합계: \(price*cnt)")
}
ToTotalPrice(price: 3, cnt: 5)



func totalPrice(price:Int, count: Int) -> Int {
    let totalPrice = price*count
    return totalPrice
}

let totalprice = totalPrice(price: 10000, count: 77)
totalPrice


func NamePrint(familyName: String, lastName: String) {
    print("\(familyName + lastName)")
}
NamePrint(familyName: "kim", lastName: "sangmin")


// ---Function as a param

/*func add(_a: Int, _b: Int) -> Int{
    return a+b
    func subtract(_a:Int, _b: Int) -> Int
            return a-b}
}
 */

 

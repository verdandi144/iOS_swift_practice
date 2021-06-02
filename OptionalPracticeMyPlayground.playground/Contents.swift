//: A UIKit based Playground for presenting user interface
  
import UIKit

var carName: String?
carName = nil
carName = "tank"

//아주 간단한 과제
var actorName: String? = nil
actorName = "이정재"
let num = Int("10")


//optional의 고급 기능 4가지
// Forced unwrapping
// Optional binding (if let)
// Optional binding (guard)
// Nil coalescing

// Forced unwrapping -> 강제로 박스를 까는 행위
// Optional binding (if let) -> 부드럽게 박스를 까는 것 1탄
// Optional binding (guard) -> 부드럽게 박스를 까는 거 2탄
// Nil coalescing -> 박스를 까봤더니, 값이 없으면 디폴트 값을 줘 보자


// Forced unwrapping -> 강제로 박스를 까는 행위
print(carName!)


// Optional binding (if let) -> 부드럽게 박스를 까는 것 1탄
if let unwrappedCarName = carName {
    print(unwrappedCarName)
} else {
    print("Car Name 없다")
}



// Optional binding (guard) -> 부드럽게 박스를 까는 거 1탄
/*func printParsedInt(from: String) {
    if let parsedInt = Int(from) {
        print(parsedInt)
    } else {
        print("Int로 컨버팅 안 된다 멍청아")
    }
}
printParsedInt(from: "100")
printParsedInt(from: "헬로우 나 인트 아님 ㅋㅋ")
*/


// Optional binding (guard) -> 부드럽게 박스를 까는 거 2탄
func printParsedInt(from: String) {
    guard let parsedInt = Int(from) else{
        print("Int로 컨버팅 안 된다 멍청아")
        return
    }
    print(parsedInt)
}
printParsedInt(from: "100")
printParsedInt(from: "헬로우 나 인트 아님 ㅋㅋ")




// Nil coalescing -> 박스를 까봤더니, 값이 없으면 디폴트 값을 줘 보자
carName = "모델 3"
let myCarName: String = carName ?? "모델 s" //carName 이 nil값이면 dafault값으로 모델 s를 줘라.




//도전과제
//1. 최애 음식이름을 담는 변수를 작성하고 (String?)
//2. 옵셔널 바인딩을 이용해서 값을 확인해보기
//3. 닉네임을 받아서 출력하는 함수 만들기, 조건 입력 파라미터는 String?

var FavoriteFood: String? = "양고기"

if let foodName = FavoriteFood {
    print(foodName)
} else {
    print("좋아하는 음식 없음")
}



func printNickName(name: String?) {
    guard let nickName = name else{
        print("nickname 만들어 주세요")
        return
    }
    print(nickName)
}

printNickName(name: "웃음전도사")

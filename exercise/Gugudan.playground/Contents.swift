import UIKit

/*
  반복문을 이용하여 구구단 출력
 */

for frontNumber in 2...9 {
    for backNumber in 1...9 {
        print("\(frontNumber) X \(backNumber) = \(frontNumber * backNumber)")
    }
}


/*
 1부터 100까지의 숫자로 3으로 나누어지는 즉 3의 배수를 찾고 3의 배수를 출력
 */

for num in 1...100 {
    if num % 3 == 0 {
        print("3의 배수 발견: \(num)")
    }
}


/*
 반복문, 조건문을 사용하여 아래와 같이 출력
 😄
 😄😄
 😄😄😄
 😄😄😄😄
 😄😄😄😄😄
 */

for i in 1...5 {
    for _ in 1...i {
        print("😄", separator: "", terminator: "")
    }
    print("")
}

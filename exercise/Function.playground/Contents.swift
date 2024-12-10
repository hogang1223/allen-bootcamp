import UIKit

/*
 팩토리얼 함수 만들어보기
 */

func getFactorial(_ num: Int) -> Int {
    guard num > 0 else {
        return 0
    }
    guard num > 1 else {
        return 1
    }
    return num * getFactorial(num - 1)
}
print(getFactorial(5))

/*
 소수 판별해보기
 소수를 판별하는 함수를 만들고, 해당 숫자가 소수인 경우 "소수입니다"를 출력 아니면 "소수가 아닙니다"를 출력
 */

func isPrime(_ num: Int) -> Bool {
    guard num > 1 else {
        return false
    }
    // 제곱근 구하기
    let squrtNumber = sqrt(Double(num))
    // 소수 판별
    for i in 2...(Int(squrtNumber) + 1) {
        if num % i == 0 {
            return false
        }
    }
    return true
}

print(isPrime(7) ? "소수입니다." : "소수가 아닙니다.")

/*
 랜덤 문자열을 뽑아내는 함수
 문자열을 입력하면 그중 한개의 글자를 랜덤으로 뽑하주는 함수를 만들어보자.
 */

func getRandomChar(_ chars: String) -> String? {
    if let char = chars.randomElement() {
        return String(char)
    }
    return nil
}

print(getRandomChar("hello-world") ?? "nil")

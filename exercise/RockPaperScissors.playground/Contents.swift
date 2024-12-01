import UIKit

/*
 가위 / 바위 / 보 게임을 if문을 사용해서 구현
 컴퓨터는 랜덤으로 선택하게 되고 나는 한가지를 고를 수 있다.
 결과적으로
 "무승부입니다."
 "당신은 졌습니다."
 "당신이 이겼습니다."
 이 셋중에 한가지가 출력되도록 합니다.
 */

enum RockPaperScissors: Int {
    case rock = 0
    case paper = 1
    case scissors = 2
}

let myHand: RockPaperScissors = .rock
let computerHand = RockPaperScissors(rawValue: Int.random(in: 0...2)) ?? .rock

print("me: \(myHand), computer: \(computerHand)")

if myHand == computerHand {
    print("무승부입니다.")
} else if myHand == .rock && computerHand == .scissors
            || myHand == .paper && computerHand == .rock
            || myHand == .scissors && computerHand == .paper {
    print("당신이 이겼습니다.")
} else {
    print("당신은 졌습니다.")
}

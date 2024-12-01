import UIKit

/*
 컴퓨터는 1~10 사이 정수에서 랜덤
 나도 1~10 사이의 정수 선택
 
 컴퓨터가 선택한 값과 내 값을 비교해서 내 숫자가 더 높은 경우 Down
 내 숫자가 더 낮은 경우 Up,
 동일할 경우 Bingo 출력
 */

let myNum = 5
let computerNum = Int.random(in: 1...10)

if myNum == computerNum {
    print("Bingo")
} else if myNum > computerNum {
    print("Down")
} else {
    print("Up")
}

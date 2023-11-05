//
//  UpDownManager.swift
//  UpDownGame
//
//  Created by 심현희 on 2023/11/05.
//

import UIKit

struct UpDownManager {
    
    // 컴퓨터는 랜덤숫자 선택하기
    // 클래스 내부에 속성 comNumber 만듦
    private var comNumber = Int.random(in: 1...10)
    private var myNumber: Int = 1
    // var myNumber: Int = 1
    // 에러발생 가능성 예방을 위해 0대신 1을 넣어주는게 낫다
    func getComputerNumber() -> Int {
        return comNumber
    }
    
    mutating func resetComputerNumber() {
        // 컴퓨터 랜덤 숫자 재설정
        comNumber = Int.random(in: 1...10)
        myNumber = 1
    }
    
    mutating func getMyNumber(num: Int) {
        myNumber = num
    }
    mutating func getUpDownResult() -> String {
        if comNumber < myNumber { return "Down" }
        else if comNumber > myNumber { return "Up" }
        else { return "Correct!😘" }
    }
}


//
//  ViewController.swift
//  UpDownGame
//
//  Created by 심현희 on 2023/09/17.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    // 컴퓨터는 랜덤숫자 선택하기
    // 클래스 내부에 속성 comNumber 만듦
    var comNumber = Int.random(in: 1...10)
    // var myNumber: Int = 1
    // 에러발생 가능성 예방을 위해 0대신 1을 넣어주는게 낫다
    
    override func viewDidLoad() {
        // 상위 메서드 호출
        super.viewDidLoad()
        // 메인레이블에 선택하세요 라고 표시
        mainLabel.text = "선택하세용"
        // 숫자레이블은 아무표시 안하기 ""
        numberLabel.text = ""
    }

    
    @IBAction func buttonTapped(_ sender: UIButton) {
    // 버튼의 숫자를 가져온다
    // 가드문사용
    // guard let numString = sender.currentTitle else { return }
        let numString = sender.currentTitle!
    // 숫자 레이블이 숫자에 따라 변하도록 만든다
        numberLabel.text = numString
    // 선택한 숫자를 변수에 저장 (선택사항)
        // guard let number = Int(numString) else { return }
        // myNumber = number
    }
    
    
    @IBAction func selectButtonTapped(_ sender: UIButton) {
        // 컴퓨터의 숫자와 내 숫자를 비교해서 up down bingo 메인레이블에 표시
        // var myNumber: Int = 1
        /* if let numString = numberLabel.text {
            if let number = Int(numString) {
                myNumber = number
            }
        }
         */
        guard let numString = numberLabel.text else { return }
        guard let myNumber = Int(numString) else { return }
        // 이렇게 가드문도 한번에 두개의 조건 사용가능 
        // guard let numString = numberLabel.text,
        // let myNumber = Int(numString) else { return }
        if comNumber < myNumber {
            mainLabel.text = "Down"
        } else if comNumber > myNumber {
            mainLabel.text = "Up"
        } else {
            mainLabel.text = "Correct!😘"
        }
        
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        // 메인레이블을 선택하세요 로 재설정
        mainLabel.text = "선택하세용"
        // 컴퓨터 랜덤 숫자 재설정
        comNumber = Int.random(in: 1...10)
        // 숫자레이블은 아무표시 안하기 ""
        numberLabel.text = ""
    }
    
}

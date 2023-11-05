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
    
    var upDownManager = UpDownManager()
    
    override func viewDidLoad() {
        // 상위 메서드 호출
        super.viewDidLoad()

    }
    func reset() {
        // 메인레이블에 선택하세요 라고 표시
        mainLabel.text = "선택하세용"
        // 숫자레이블은 아무표시 안하기 ""
        numberLabel.text = ""
        upDownManager.resetComputerNumber()
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
        upDownManager.getMyNumber(num: myNumber)
        mainLabel.text = upDownManager.getUpDownResult()
        
        
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        reset()
        
    }
    
}

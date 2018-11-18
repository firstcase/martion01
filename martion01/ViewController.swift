//
//  ViewController.swift
//  martion01
//
//  Created by lucie on 2018. 9. 12..
//  Copyright © 2018년 lucie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let questions = Questions()
    var number = 0
    var score = 0
    var curruntAnswer:Bool?
    var answers = [Bool?]()
    
    @IBOutlet weak var invisibleRadioButton: DLRadioButton!
    @IBOutlet weak var questionBox: UILabel!
    
    @IBAction func yes(_ sender: Any) {
        curruntAnswer = true
    }
    
    @IBAction func no(_ sender: Any) {
        curruntAnswer = false
    }

    func isAnswered() -> Bool {
        if curruntAnswer == true || curruntAnswer == false {
            return true
        } else {
            return false
        }
    }
    
    @IBAction func nextButton(_ sender: Any) {
        if isAnswered() == false {
            return
        }
        
        answers.append(curruntAnswer)
        
        if curruntAnswer == true {
            if number ==  3 || number == 4 || number == 5 || number == 7 || number == 9 || number == 11 || number == 16 || number == 17  {
                score = score + 1
            }
        }
        
        if curruntAnswer == false {
            if number ==  0 || number == 1 || number == 2 || number == 6 || number == 8 || number == 10 || number == 12 || number == 13 || number == 14 || number == 15   {
                score = score + 1
            }
        }
        
        number = number + 1
        if number == 18 {
            // 스코어 값이랑 화면을 넘겨줘
            guard let a = self.storyboard!.instantiateViewController(withIdentifier: "RVC" ) as? ResultViewController else {
                return
            }
            a.score = self.score
            a.answers = self.answers
            
            present(a, animated: false)
            self.navigationController?.popViewController(animated: false)
        } else {
            questionBox.text = questions.Q[number].content
            invisibleRadioButton.deselectOtherButtons()
            curruntAnswer = nil
        }
    }
    // 4, 5, 6, 8, 10, 12, 17, 18은 T일 때 + 1, 2, 3, 7, 9, 11, 13, 14, 15, 16은 F일 때 자기감시 성향이 높아요.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionBox.text = questions.Q[number].content
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}


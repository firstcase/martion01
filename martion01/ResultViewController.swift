//
//  ResultViewController.swift
//  martion01
//
//  Created by lucie on 2018. 9. 26..
//  Copyright © 2018년 lucie. All rights reserved.
//

import UIKit
class ResultViewController : UIViewController {

    @IBOutlet weak var scoreBox: UILabel!
    @IBOutlet weak var comment: UILabel!
    
    var score = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        scoreBox.text = "\(score) 점"
        
        if score < 5 {
            comment.text = "자기 감시 성향이 낮습니다. 자기감시가 낮은 사람은 상황이나 타인을 신경쓰지 않습니다. 자신의 기분과 원칙에 의해서 움직입니다."
        } else if 5 < score && score < 11 {
            comment.text = "자기 감시 성향은 보통입니다. 자신의 기분과 원칙 vs 타인의 행동과 상황을 비슷한 수준으로 고려합니다."
        } else {
            comment.text = "자기 감시 성향이 높습니다. 자기 감시가 높은 사람은 자신의 행동을 사회기준에 맞추려고 합니다. 상황이나 타인의 행동에 신경을 많이 쓰는 편입니다."
        }
    }
}

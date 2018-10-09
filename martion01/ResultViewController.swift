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
        
    }

    
    
    
}

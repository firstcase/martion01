//
//  TableViewController.swift
//  martion01
//
//  Created by lucie on 23/10/2018.
//  Copyright © 2018 lucie. All rights reserved.
//

import Foundation

class TableViewController : UITableViewController  {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListCell")!
        if indexPath.row == 0 {
            cell.textLabel?.text = "자기감시 테스트"
        } else {
            cell.textLabel?.text = "자존감 테스트"
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            let t01 = self.storyboard!.instantiateViewController(withIdentifier: "TestNo1")
            self.navigationController?.pushViewController(t01, animated: true)
        } else if indexPath.row == 1 {
            print("1")
        }
    }
    
}


//
//  MainViewController.swift
//  找工作2
//
//  Created by 方瑾 on 2019/2/22.
//  Copyright © 2019 方瑾. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var messageTableView: UITableView!
    var ispand = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageTableView.delegate = self
        messageTableView.dataSource = self
        
        
        
        
    }
}
extension MainViewController : UITableViewDelegate,UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 1
        case 1:
            return 1
        default:
            return 1
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "FirstTableViewCell", for: indexPath) as! FirstTableViewCell
            
            
            cell.searchTextField.delegate = self
            return cell
        case 1:
             let cell = tableView.dequeueReusableCell(withIdentifier: "SecondTableViewCell", for: indexPath) as! SecondTableViewCell
             cell.addressTextField.delegate = self
            return cell


        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ThirdTableViewCell", for: indexPath) as! ThirdTableViewCell
            return cell
          
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return 100
        case 1:
            if !ispand {
                return 0
            } else {
                return 100
            }
            
            
        default:
            return 100
        }

        
    }
    
   
    
   
}
extension MainViewController : UITextFieldDelegate {
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        ispand = !ispand
        
        messageTableView.reloadData()
        
        return  false
        
        
    }
    
}


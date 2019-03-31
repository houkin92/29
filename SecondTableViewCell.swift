//
//  SecondTableViewCell.swift
//  找工作2
//
//  Created by 方瑾 on 2019/2/22.
//  Copyright © 2019 方瑾. All rights reserved.
//

import UIKit

class SecondTableViewCell: UITableViewCell {

    @IBOutlet weak var kinWordsTextField: UITextField!
    
    @IBOutlet weak var addressTextField: UITextField!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

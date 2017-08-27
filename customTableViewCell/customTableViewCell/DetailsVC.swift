//
//  DetailsVC.swift
//  customTableViewCell
//
//  Created by Вадим Атаманенко on 21.08.17.
//  Copyright © 2017 studio. All rights reserved.
//

import UIKit

class DetailsVC: UIViewController {

    @IBOutlet weak var SuccessLabel: UILabel!
    @IBOutlet weak var DetailLabel: UILabel!
    
    var ButtonName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        DetailLabel.text = "\(ButtonName)"
        
        if ButtonName != "" {
            SuccessLabel.text = "Assigment success"
        } else {
            SuccessLabel.text = "Assigment unsuccess"
        }
    }

}

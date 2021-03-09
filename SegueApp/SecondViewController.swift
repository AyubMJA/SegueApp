//
//  SecondViewController.swift
//  SegueApp
//
//  Created by Ayub Ali on 2021-03-07.
//

import UIKit

class SecondViewController: UIViewController {

    
    
    @IBOutlet weak var mySecondLabel: UILabel!
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    var myName = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        nameLabel.text = myName
    }
    
}

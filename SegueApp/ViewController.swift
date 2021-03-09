//
//  ViewController.swift
//  SegueApp
//
//  Created by Ayub Ali on 2021-03-06.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var nameText: UITextField!
    var userName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("ViewDidLoad function called")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("ViewDidDisappear function called")
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("ViewWillDisappear function called")
    }
    override func viewWillAppear(_ animated: Bool) {
        print("ViewWillAppear function called")
        nameText.text = ""
    }
    override func viewDidAppear(_ animated: Bool) {
        print("ViewDidAppear function called")
    }
    @IBAction func nextClicked(_ sender: UIButton) {
        userName = nameText.text!
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC"{
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.myName = userName
        }
    }
}


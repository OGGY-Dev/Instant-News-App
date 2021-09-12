//
//  ViewController.swift
//  Instant News App
//
//  Created by Oğulcan DEMİRTAŞ on 12.09.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

   
    @IBAction func loginButton(_ sender: UIButton) {
        performSegue(withIdentifier: "toTabbar", sender: nil)
    }
    @IBAction func registerButton(_ sender: UIButton) {
    }
}


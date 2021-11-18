//
//  ViewController.swift
//  RealmFileSyncCheck
//
//  Created by Fahim Rahman on 18/11/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var login: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        login.setTitle("Log in", for: .normal)
    }

    @IBAction func usernameEditingEnd(_ sender: Any) {
        
    }
    
    @IBAction func passwordEditingDidEnd(_ sender: Any) {
        
    }
    @IBAction func loginButton(_ sender: Any) {
        let alert = UIAlertController(title: "Logged In", message: "Check the data in Realm Studio", preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "Okay", style: .default , handler: { _ in
            
        })
        alert.addAction(alertAction)
        self.present(alert, animated: true)
    }
}


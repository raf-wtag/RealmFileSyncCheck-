//
//  ViewController.swift
//  RealmFileSyncCheck
//
//  Created by Fahim Rahman on 18/11/21.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var login: UIButton!
    
    let instance = DatabaseManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        login.setTitle("Log in", for: .normal)
    }

    @IBAction func usernameEditingEnd(_ sender: Any) {
        instance.name = username.getText()
    }
    
    @IBAction func passwordEditingDidEnd(_ sender: Any) {
        instance.password = username.getText()
    }
    @IBAction func loginButton(_ sender: Any) {
        let alert = UIAlertController(title: "Logged In", message: "Check the data in Realm Studio", preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "Okay", style: .default , handler: { _ in
            self.save()
        })
        alert.addAction(alertAction)
        self.present(alert, animated: true)
    }
    
    func save() {
        do {
            let realm = try Realm()
            try realm.write {
                realm.add(instance)
            }
        } catch {
            
        }
    }
}

extension UITextField {
    func getText() -> String {
        self.text ?? ""
    }
}

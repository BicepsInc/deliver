//
//  Registration.swift
//  delivery
//
//  Created by Roman Dvoritskiy on 05.11.2019.
//  Copyright © 2019 Roman Dvoritskiy. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseCore
import FirebaseFirestore
import RxSwift
import FirebaseDatabase

class Registration: UIViewController {
    let db = Firestore.firestore()
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var surnameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    @IBAction func registrationAction(_ sender: Any) {
        
        if let username = nameTextField.text, let surname = surnameTextField.text, let email = emailTextField.text, let password = passwordTextField.text, let confirmPassword = confirmPasswordTextField.text {
            if password != confirmPassword {
                errorBanner(title: "Password Incorrect", message: "Please re-type password")
                
            } else if username == ""{
                errorBanner(title: "Not name ", message: "Please write name")

            } else if surname == "" {
                errorBanner(title: "Not surname ", message: "Please write surname")

            } else {
                Auth.auth().createUser(withEmail: email, password: password){ (user, error) in
                    if error == nil {
                        let vc = self.storyboard?.instantiateViewController(withIdentifier: "OrderController") as! OrderController
                        self.saveUserToDatabase(name: username, surname: surname)
                        let navigationController = UINavigationController(rootViewController: vc)
                        navigationController.modalPresentationStyle = .fullScreen
                        self.present(navigationController, animated: true, completion: nil)
                    } else {
                        let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                        let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                        
                        alertController.addAction(defaultAction)
                        self.present(alertController, animated: true, completion: nil)
                    }
                }
            }
        }
        
        
    }
    func saveUserToDatabase(name: String, surname: String) {
        db.collection("Users").document(Auth.auth().currentUser?.uid ?? "")
            .setData(["name" : name, "surname" : surname, "email" : Auth.auth().currentUser?.email ?? ""], merge: true)
    }
    
    func errorBanner(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        self.present(alert,animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}

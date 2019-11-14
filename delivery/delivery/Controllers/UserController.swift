//
//  UserController.swift
//  delivery
//
//  Created by Roman Dvoritskiy on 05.11.2019.
//  Copyright © 2019 Roman Dvoritskiy. All rights reserved.
//

import Foundation
import FirebaseAuth
import FirebaseCore
import FirebaseFirestore
import RxSwift

class UserController {
    let db = Firestore.firestore()
    private let disposeBag = DisposeBag()
    
    var userObservable: Observable<User> {
        return usersVariable.asObservable()
    }
    var user: User {
        return usersVariable.value
        
    }
    private let usersVariable = Variable<User>(User())

    func registerUser(name: String, surname: String, email: String, password: String) -> Completable {
      return Completable.create { completable in
            Auth.auth().createUser(withEmail: email, password: password, completion: { (user, error) in
                guard let user = user, error == nil else {
                    if error != nil {
                        completable(.error(error!))
                    } else {
                        completable(.error(NSError(domain: "My App", code: 500, userInfo: [NSLocalizedDescriptionKey: "Sorry, authentication failed! Please try again later."])))
                    }
                    return
                }
                 self.saveUserToDatabase(name: name, surname: surname)
                completable(.completed)
            })
            return Disposables.create()
        }
    }
    
    func saveUserToDatabase(name: String, surname: String) {
        db.collection("Users").document(Auth.auth().currentUser?.uid ?? "")
            .setData(["name" : name, "surname" : surname, "email" : Auth.auth().currentUser?.email ?? ""], merge: true)
    }
    
}

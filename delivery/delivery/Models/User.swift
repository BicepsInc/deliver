//
//  User.swift
//  delivery
//
//  Created by Roman Dvoritskiy on 05.11.2019.
//  Copyright © 2019 Roman Dvoritskiy. All rights reserved.
//

import Foundation

class User:ExpressibleByJSONDictionary  {
    var id: String?
    var email: String?
    var name: String?
    var photoUrl: String?
    
    init() {
        self.id = ""
        self.email = ""
        self.name = ""
        self.photoUrl = ""
    }
}

//
//  DataManager.swift
//  delivery
//
//  Created by Roman Dvoritskiy on 05.11.2019.
//  Copyright © 2019 Roman Dvoritskiy. All rights reserved.
//

import Foundation
import RxSwift

class DataManager {
    //MARK: Singleton
    static let shared = DataManager()
    var userController = UserController()
//    var groupChatController = GroupChatsController()
//    var messageController = MessagesController()
    
//    private init() {
//    }
//    func loadUserData(withId id:String) -> Completable {
//        
//        let controllers = [ userController.loadUser(for: id).retry(2)
//                            ,groupChatController.load().retry(2)]
//        
//        return Completable.merge(controllers)
//    }
}

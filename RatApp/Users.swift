//
//  Users.swift
//  RatApp
//
//  Created by Josh Reno on 10/13/17.
//  Copyright © 2017 Joshua Reno. All rights reserved.
//

import Foundation

class Users {
    static var dictionary:[(username: String, password: String, type: UserType)] = []
    static func addToDictionary(username: String, password: String, type: UserType) {
        dictionary.append((username, password, type))
    }
    static func getFromDictionary(username: String) -> (String, String, UserType){
        for data in dictionary {
            if data.username == username {
                return data
            }
        }
        return ("", "", UserType.User)
    }
}

//
//  FriendsStorage.swift
//  VKLogger
//
//  Created by Александр Родькин on 15.07.2021.
//

import Foundation

class FriendsStorage {
    
    let friends: [UsersModel]
    
    init() {
        friends = [
            UsersModel(name: "Maradeur", avatarName: "MaradeurIcon"),
            UsersModel(name: "Archville", avatarName: "ArchvilleIcon"),
            UsersModel(name: "Imp", avatarName: "ImpIcon"),
            UsersModel(name: "Revenant", avatarName: "RevenantIcon")
        ]
    }
}


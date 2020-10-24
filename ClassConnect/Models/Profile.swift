//
//  Profile.swift
//  ClassConnect
//
//  Created by Haolin Hu on 10/24/20.

import Foundation 

struct Profile {

    var id: String
    var name: String
    var email: String
    var isTA: Bool
    
    init(id: String) {
        self.id = id
    }
}

let profileData = [
    profile(id: "0", name: "Alexander", isTA: true)
    profile(id: "1", name: "Shaoyang", isTA: false)
    profile(id: "2", name: "Milo", isTA: false)
    profile(id: "3", name: "Haolin", isTA: false)
]
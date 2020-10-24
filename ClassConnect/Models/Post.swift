//
//  Post.swift
//  ClassConnect
//
//  Created by Alexander Harding Bradley on 10/24/20.
//  Copyright © 2020 Software Engineering Group 2020. All rights reserved.
//

import Foundation

struct Post: Codable, Identifiable{
    var id: String
    var creator: String
    var content: String
}

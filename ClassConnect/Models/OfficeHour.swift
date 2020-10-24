//
//  OfficeHour.swift
//  ClassConnect
//
//  Created by Alexander Harding Bradley on 10/24/20.
//  Copyright © 2020 Software Engineering Group 2020. All rights reserved.
//

import Foundation

struct OfficeHour{
    var id: String
    var ta: String
    var registeredUsersID = [String]()
    var officeHourPoll: Poll?
    
}

var idCount = 0

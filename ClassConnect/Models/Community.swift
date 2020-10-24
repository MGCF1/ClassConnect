//
//  Community.swift
//  ClassConnect
//
//  Created by Alexander Harding Bradley on 10/24/20.
//  Copyright © 2020 Software Engineering Group 2020. All rights reserved.
//

import Foundation

class Community: Codable, Identifiable, Equatable{

    var id: String
    var owner: String
    var name: String
    var users = [String]()
    var content = [Post]()

    init(id: String, owner: String, name: String, users: [String], content: [Post]){
        self.id = id
        self.owner = owner
        self.name = name
        self.users = users
        self.content = content
    }
    static func == (lhs: Community, rhs: Community) -> Bool {
         return (lhs.id == rhs.id)
    }
}

let genericPostsOne = [
    Post(id: "0", creator: "Shaoyang8", content: "I finally made a Quizlet of cards to study. DM me for details"),
    Post(id: "1", creator: "Shaoyang8", content: "Does anyone understand what the homework problem 3 is asking for?"),
    Post(id: "2", creator: "Alexander01", content: "PSA our professor moved the test back a week, in case you didn't see it in the announcement"),
    Post(id: "3", creator: "Shaoyang8", content: "Did anyone take good notes during last class? I had to skip class because I was sick and need some notes."),
    Post(id: "4", creator: "Shaoyang8", content: "Does anyone still have to fill out the worksheet and is looking for a partner?"),
    Post(id: "5", creator: "Alexander01", content: "Does anyone still have to fill out the worksheet and is looking for a partner?"),
    Post(id: "6", creator: "Shaoyang8", content: "Does anyone understand what the homework problem 3 is asking for?"),
    Post(id: "7", creator: "Alexander01", content: "PSA our professor moved the test back a week, in case you didn't see it in the announcement"),
    Post(id: "8", creator: "Shaoyang8", content: "Did anyone take good notes during last class? I had to skip class because I was sick and need some notes."),
    Post(id: "9", creator: "Alexander01", content: "Does anyone still have to fill out the worksheet and is looking for a partner?"),
    Post(id: "10", creator: "Alexander01", content: "Does anyone still have to fill out the worksheet and is looking for a partner?"),
]

let genericPostsTwo = [
    Post(id: "0", creator: "Andy243", content: "That chemistry test was so hard! Or was I the only one who thought that was hard..."),
    Post(id: "1", creator: "Andy243", content: "I'm inviting you all to a review session I'm having at my apartment, starting tomorrow at 5pm."),
    Post(id: "2", creator: "Miloes", content: "Here's a reminder that class is in Tink today"),
    Post(id: "3", creator: "Shaoyang8", content: "Check the google drive and add all the notes you took"),
    Post(id: "4", creator: "Alexander01", content: "The homework deadline was pushed back, everyone!"),
    Post(id: "5", creator: "Miloes", content: "This class flew by so quickly. DM me and I'll give you my number so we can stay in touch after this class."),
    Post(id: "6", creator: "Andy243", content: "I'm inviting you all to a review session I'm having at my apartment, starting tomorrow at 5pm."),
    Post(id: "7", creator: "Andy243", content: "Here's a reminder that class is in Tink today"),
    Post(id: "8", creator: "Andy243", content: "Check the google drive and add all the notes you took"),
    Post(id: "9", creator: "Miloes", content: "The homework deadline was pushed back, everyone!"),
    Post(id: "10", creator: "Miloes", content: "This class flew by so quickly. DM me and I'll give you my number so we can stay in touch after this class."),
]

let communityData = [
    Community(id: "0", owner: "Miloes", name: "Bio111 Group", users: ["Andy243", "Shaoyang8","Alexander01"], content: genericPostsOne),
    Community(id: "1", owner: "Shaoyang8", name: "Chem211 is Fun", users: ["Andy243", "Alexander01"], content: genericPostsTwo),
    Community(id: "2", owner: "Alexander01", name: "Software Engineering Group", users: ["Andy243", "Shaoyang8", "Miloes"], content: genericPostsOne),
    Community(id: "3", owner: "Miloes", name: "ECSE 233", users: ["Andy243", "Shaoyang8", "Alexander01"], content: genericPostsOne),
    Community(id: "4", owner: "Shaoyang8", name: "CSDS 338", users: ["Alexander01"], content: genericPostsOne),
]

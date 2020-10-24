//
//  CommunityViewModel.swift
//  ClassConnect
//
//  Created by Alexander Harding Bradley on 10/24/20.
//  Copyright © 2020 Software Engineering Group 2020. All rights reserved.
//

import Foundation
import Combine

class CommunityViewModel: ObservableObject, Identifiable{
    @Published var communitySet = [Community]()
    
    init(uid: String){
        fetchCommunity(uid: uid)
    }
    
    func createCommunty(uid: String, communityName: String){
        communitySet.append(Community(id: "\(communityData.count + 1)", owner: uid, name: communityName, users: [], content: []))
    }
    
    func fetchCommunityContent(uid: String, communityID: String ){
        for community in communityData{
            if(community.id == communityID){
                //I think this only needs to be implemented when using firestore, dummy data already includes community content
                return
            }
        }
    }
    
    func fetchCommunity(uid: String){
        for community in communityData{
            if(community.users.contains(uid) && !communitySet.contains(community)){
                self.communitySet.append(community)
            }
        }
    }
    
    func leaveCommunity(uid: String, communityID: String){
        for community in communitySet{
            if(community.id == communityID){
                if(community.owner == uid){
                    if(community.users.count > 0){
                        community.owner = community.users[0]
                    }
                    else if let index = communitySet.index(of: community) {
                        communitySet.remove(at: index)
                    }
                }
                else if let index = community.users.index(of: uid) {
                    community.users.remove(at: index)
                }
                return
            }
        }
    }
    
    func deleteCommunity(uid: String, communityID: String){
        for community in communitySet{
            if(community.id == communityID && community.owner == uid){
                if let index = communitySet.index(of: community) {
                    communitySet.remove(at: index)
                }
                return
            }
        }
    }
    
    func addCommunity(uid: String, communityID: String, newUserUID: String){
        for community in communitySet{
            if(community.id == communityID){
                community.users.append(newUserUID)
                return
            }
        }
    }
    
    func postCommunity(uid: String, communityID: String, content: String){
        for community in communitySet{
            if(community.id == communityID){
                community.content.append(Post(id: "\(community.content.count + 1)", creator: uid, content: content))
                return
            }
        }
    }
    
    func createCommunityAsClass(uid: String, classid: String, communityName: String){
        //Must check if uid corresponds to a user of TA type instead of the true statement; the model for users should be implememented by Andy
        if(true){
            communitySet.insert(Community(id: "\(communityData.count + 1)", owner: uid, name: communityName, users: [], content: []), at: 0)
        }
    }
}


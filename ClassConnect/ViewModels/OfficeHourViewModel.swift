//
//  OfficeHourViewModel.swift
//  ClassConnect
//
//  Created by Alexander Harding Bradley on 10/24/20.
//  Copyright © 2020 Software Engineering Group 2020. All rights reserved.
//

import Foundation
import Combine

class OfficeHourViewModel: ObservableObject, Identifiable{
    @Published var officeHour: OfficeHour?
    
    func createOfficeHour(uid: String, communityID: String){
        for community in communityData{
            if(community.id == communityID){
                self.officeHour = OfficeHour(id: uid, ta: "\(idCount+1)", registeredUsersID: community.users)
            }
        }
        self.officeHour = OfficeHour(id: uid, ta: "\(idCount+1)", registeredUsersID: [])
    }
    
    func createPoll(question: String, options: [String]){
        var pollOptions = [(String, [String])]()
        for (index, option) in options.enumerated(){
            pollOptions.insert((option, []), at: index)
        }
        self.officeHour?.officeHourPoll = Poll(question: question, options: options, userIDs: [[]])
    }
    
    func incrementPollOption(option: String, uid: String){
        //the first if statement should check if the uid corresponds to a user who is a TA
        if(true){
            if (officeHour != nil){
                for (index, anoption) in self.officeHour!.officeHourPoll!.options.enumerated(){
                    if(anoption == option){
                        self.officeHour!.officeHourPoll!.userIDs[index].append(uid)
                    }
                    return
                }
            }
        }
    }
    
    func deleteOfficeHour(uid: String){
        if(uid == officeHour?.ta){
            officeHour = nil
        }
    }
    
    func notifyPoll(option: String){
        //no implementation yet
    }
}

//
//  ProfileViewModel.swift
//  ClassConnect
//
//  Created by Haolin Hu on 10/24/20.

import Foundation 

class ProfileViewModel: ObservableObject, Identifiable{
    @published var profileSet = [profile]()

    init(uid: String) {
        fetchUser(uid: uid)
    }

    func fetchUser(uid: String) {
        for profile in profileData {
            if (profile.id == uid) {
                return
            }
        }
    }

    func updateDetails(field: String) {

    }

    func updateInformation(uid: String, field: String, value: String) {
        for profile in profileSet {
            if (profile.id == uid) {
                
            }
        }
    }
}
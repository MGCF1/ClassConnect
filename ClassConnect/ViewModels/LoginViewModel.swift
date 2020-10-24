//
//  LoginViewModel.swift
//  ClassConnect
//
//  Created by Haolin Hu on 10/24/20.
//

import Foundation

class LoginViewModel: ObservableObject, Identifiable {

    func verify() {

    }

    func checkingUsers(email: String) {
        for profile in profileData {
            if (email == profile.email) {
                // go to home page
            }
        }
        // go to registration page
    }
}
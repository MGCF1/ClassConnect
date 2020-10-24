//
//  GPAViewModel.swift
//  ClassConnect
//
//  Created by Haolin Hu on 10/24/20.
//

import Foundation

class GPAViewModel: ObservableObject, Identifiable {
    @published var GPA: GPA?

    func fetchGPA(uid: String) {
        for GPA in GPAData{
            if (GPA.id == uid) {
                self.GPA = GPA(id: uid)
            }
        }
    }

    func updateGPA(uid: String, classid: String, categoryid: String, value: Double) {

    }

    func fetchCurve(uid: String, classid: String) -> curve {

    }

    func adjustWeight(uid: String, classid: String) {
        
    }
}
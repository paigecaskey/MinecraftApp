//
//  MobList.swift
//  Paige_Caskey_Project2
//

import Foundation
import SwiftUI
// observable class to manage a list of mob objects
class MobList : ObservableObject, Identifiable {
    // published array of mobs which can be observed by SwiftUI Views
    @Published var Mobs: [Mob]
    // initilizes MobList with an optional array of Mob objects
    init(Mobs: [Mob] = []){
        self.Mobs = Mobs
    }
}

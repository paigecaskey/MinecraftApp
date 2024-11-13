//
//  mobs.swift
//  Paige_Caskey_Project2
//
import SwiftUI

// structure to build a mob entity
struct Mob : Codable, Identifiable, Hashable {
    // id : unique identifier for the mob
    var id: String
    // name : name of the mob
    var name: String
    // biome: biome hte mob is found in
    var biome: String
    // passive: indicates whether the mob is passive or not
    var passive: Bool
    //imageName: name of the image which identifies the mob
    var imageName: String
}

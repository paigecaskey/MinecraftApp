//
//  mobDetail.swift
//  Paige_Caskey_Project2
//
//  Created by paige caskey on 10/24/24.
//

import Foundation
import SwiftUI

// view that displays information about a mob including:
// image, name, biome, danger level, and a "like" button
struct MobDetail: View {
    let selectedMob: Mob
    // variable isLiked: tracks the "like" status of a mob
    @State private var isLiked: Bool = false
    
    var body: some View {
        Form {
            Section(header: Text("Mob Details")) {
                // displays scaled image of the mob
                Image(selectedMob.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 200)
                // displays name of the mob
                HStack {
                    Text("Name:").font(.headline)
                    Spacer()
                    Text(selectedMob.name)
                }
                .padding()
                // displays biome where the mob is found
                HStack {
                    Text("Biome:").font(.headline)
                    Spacer()
                    Text(selectedMob.biome)
                }
                .padding()
                // displays mob danger level
                HStack {
                    Text("Danger:")
                        .font(.headline)
                    Spacer()
                    // a heart is displayed if the mob is passive
                    if selectedMob.passive {
                        Image(systemName: "heart.fill")
                            .foregroundColor(.red)
                        Text("Passive")
                    // a warning symbol is displayed if the mob will attack
                    } else {
                        Image(systemName: "exclamationmark.triangle.fill")
                            .foregroundColor(.orange)
                        Text("Will Attack")
                    }
                }
                .padding()
            }
            // section includes "like" button for the mob
            Section(header: Text("Like")) {
                            // button toggles "like" status of the mob
                            Button(action: {
                                isLiked.toggle()
                            }) {
                                // a red heart is displayed if the user likes the mob
                                if isLiked {
                                    Image(systemName: "heart.fill")
                                        .foregroundColor(.red)
                                        .font(.largeTitle)
                                // a hollow heart is displayed otherwise
                                } else {
                                    Image(systemName: "heart")
                                        .foregroundColor(.gray)
                                        .font(.largeTitle)
                                }
                            }
                            .buttonStyle(PlainButtonStyle())
                        }
                    }
                    .navigationTitle("Mob Details")
            }
        }

#Preview {
    MobDetail(selectedMob: MobData.first!)
}


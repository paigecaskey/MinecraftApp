//
//  AddNewMob.swift
//  PCaskey_P2
//

import SwiftUI

// vioew for adding a new mob to the list with options to input:
// name, biome, and passive status
struct AddNewMob: View {
    @State var mobList: MobList
    @Binding var path: NavigationPath
    @State private var name: String = ""
    @State private var biome: String = ""
    @State private var isPassive = false
    
    var body: some View {
        Form {
            Image(systemName: "pawprint")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 200)
            Section(header: Text("Add New Mob")) {
                TextField("Mob Name: ", text: $name)
                TextField("Mob Biome: ", text: $biome)
                Toggle("Is Passive", isOn: $isPassive)
                
                Button(action: addMob) {
                    Text("Add Mob")
                        .font(.headline)
                }
            }
        }
    }
// adds a new mob to the list based on user input, then navigates back to the main list
func addMob() {
    let newMob = Mob(id: UUID().uuidString, name: name, biome: biome, passive: isPassive, imageName: "defaultImage")
        // default image is used for newly added mobs
        mobList.Mobs.append(newMob)
        path.removeLast()
    }
}
// reusable input field for accepting text input, with a title label and a binding for user input
struct DataInput: View {
    var title: String
    @Binding var userInput: String

    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.headline)
            TextField("Enter \(title)", text: $userInput)
        }
        .padding()
    }
}


//
//  ContentView.swift
//  PCaskey_P2
//

import SwiftUI

// main view for displaying a list of minecraft mobs
// options to: delete, add, and reorder
struct ContentView: View {
    // pre-initilized observable list of mobs
    @ObservedObject var mobList = MobList(Mobs: MobData)
    // navigation path used to keep track of views within the navigation stack
    @State private var stackPath = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $stackPath) {
            List {
                ForEach(mobList.Mobs, id: \.id) { mob in
                    NavigationLink(value: mob) {
                        ListCell(mob: mob)
                    }
                }
                .onMove(perform: moveItems)
                .onDelete(perform: deleteItems)
            }
            .navigationDestination(for: String.self) { _ in
                AddNewMob(mobList: mobList, path: $stackPath)
            }
            .navigationDestination(for: Mob.self) { mob in
                MobDetail(selectedMob: mob)
            }
            .navigationTitle("Minecraft Mobs")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    NavigationLink(value: "Add Mob") { Text("Add") }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
            }
        }
    }
    // moves items within the mob list to a new location
    // parameters:
    // - source: the original index set of items to move
    // - destimation: the destination index within the array
    func moveItems(from source: IndexSet, to destination: Int) {
        mobList.Mobs.move(fromOffsets: source, toOffset: destination)
    }
    // deletes items from the mob list
    // - parameter offsets: the index of items to delete
    func deleteItems(at offsets: IndexSet) {
        mobList.Mobs.remove(atOffsets: offsets)
        print("deleted")
    }
}

// a view representing a single cell in the list, displaying the mob's image and name
struct ListCell: View {
    var mob: Mob
    var body: some View {
        HStack {
            Image(mob.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
            Text(mob.name)
                .padding()
            }
        }
    }


#Preview {
    ContentView()
}

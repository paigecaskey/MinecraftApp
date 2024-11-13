# Minecraft Mob App

## Overview

This is a SwiftUI-based iOS application designed to display and manage Minecraft mobs. The app allows users to view a list of mobs, see detailed information about each mob, and add new mobs to the list. Users can also mark their favorite mobs with a "like" feature. This app showcases various features of SwiftUI, including navigation, state management, and UI components such as forms and buttons.

## Features

- **Browse Minecraft Mobs**: View a list of mobs with their names, biomes, and danger levels.
- **Mob Details**: Tap on a mob to view detailed information, including the mob's name, biome, and whether it's passive or aggressive.
- **Like Mobs**: Users can "like" mobs by tapping the heart icon, toggling between filled and empty hearts.
- **Add New Mob**: Users can add new mobs by entering details (name, biome, and danger status) in a form.
- **Edit and Delete Mobs**: Users can reorder or delete mobs in the list using the app's toolbar options.

## Technologies Used

- **SwiftUI**: To build the user interface using Apple's declarative UI framework.
- **NavigationStack**: For handling navigation between views, allowing easy transitions between the mob list, mob details, and the "add new mob" screen.
- **State Management**: Using `@State`, `@Binding`, and `@ObservedObject` to manage state and update the UI dynamically.
- **JSON Parsing**: Loading and decoding mob data from a JSON file to populate the mob list.

## How to Use

- **View Mobs**: The app opens to a list of Minecraft mobs. Each mob is represented by an image, its name, and a brief description.
- **Mob Details**: Tap on any mob in the list to see detailed information about it, including whether it is passive or aggressive.
- **Like a Mob**: Tap the heart icon to toggle between liking and unliking a mob. A filled heart means you like it, and an empty heart means you don't.
- **Add New Mob**: Use the "Add" button in the navigation bar to create a new mob. Enter the mob's name, biome, and danger status (passive or aggressive).
- **Edit and Delete Mobs**: Use the "Edit" button to reorder or delete mobs in the list.

## Files and Data Structure

- **Mob Model**: The app uses a `Mob` struct that conforms to `Codable`, `Identifiable`, and `Hashable` to represent each mob. Each mob has the following properties:
  - `id`: A unique identifier for the mob (UUID).
  - `name`: The name of the mob.
  - `biome`: The biome the mob spawns in.
  - `passive`: A boolean indicating whether the mob is passive or aggressive.
  - `imageName`: The name of the image associated with the mob.
  
- **MobList**: An observable object that holds a list of mobs and manages adding, deleting, and updating the mob list.

- **JSON Data**: Mob data is loaded from a local JSON file (`Minecraft_Data.json`) containing predefined mob entries.

## Acknowledgments

- Special thanks to the Minecraft community for inspiring this app and providing the data.
- Thank you to Apple for the amazing SwiftUI framework.



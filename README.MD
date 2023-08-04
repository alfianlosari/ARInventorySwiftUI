# iOS & VisionOS AR Realtime Inventory Tracker App 

![alt text](https://i.ibb.co/sQ5y87D/promo.png)

AR Realtime Inventory Tracker visionOS & iOS App built with seamless Augmented Reality Integration

## Features
- Sync inventory items across devices using Firestore
- Upload UsDZ file to cloud using firebase storage
- Generate thumbnail image of USDZ using QLThumbailPreview
- Preview usdz ar using QuickLook
- Display 3D model directly on SwiftUI visionOS 
- 3D Model Entity in RealityView Volumetric Window
- Drag Gesture for 3d rotation, Magnify Gesture for ScaleEffect
- Custom DragItemProvider to preview Usdz in Shared Space QuickLook

## Requirements
- Xcode 15 (At least Beta 5)
- Replace the bundleID for the App with your own.
- Firebase iOS & visionOS Project, download `GoogleService-info.plist` to your Xcode project target.
- As per Firebase SDK 10.13.0 (08/01/2023), you need to pass `open --env FIREBASE_SOURCE_FIRESTORE /path/to/project.xcodeproj` to be able to build on visionOS target

## YouTube Tutorial
You can check the full video tutorial on building this from scratch.

[YouTube](https://youtu.be/DxVmeVf0Wwg)
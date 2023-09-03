# iOS & VisionOS AR Realtime Inventory Tracker App 

![alt text](https://i.ibb.co/sQ5y87D/promo.png)
![alt text](https://i.ibb.co/nC6tWLM/promo.jpg)

AR Realtime Inventory Tracker/Scanner visionOS & iOS App built with seamless Augmented Reality Integration

## Features
- Sync inventory items across devices using Firestore
- In App Scan and Capture Object using iPhone LiDAR Camera sensor to transform into USDZ file.
- Upload UsDZ file to cloud using firebase storage
- Generate thumbnail image of USDZ using QLThumbailPreview
- Preview usdz ar using QuickLook
- Display 3D model directly on SwiftUI visionOS 
- 3D Model Entity in RealityView Volumetric Window
- Drag Gesture for 3d rotation, Magnify Gesture for ScaleEffect
- Custom DragItemProvider to preview Usdz in Shared Space QuickLook

## Requirements
- Xcode 15 (At least Beta 8)
- iOS 17
- Replace the bundleID for the App with your own.
- Firebase iOS & visionOS Project, download `GoogleService-info.plist` to your Xcode project target.
- As per Firebase SDK 10.14.0, you need to pass `open --env FIREBASE_SOURCE_FIRESTORE /path/to/project.xcodeproj` to be able to build on visionOS target

## YouTube Tutorial
You can check the full video tutorial on building this from scratch.

[YouTube](https://youtu.be/DxVmeVf0Wwg)
[YouTube - Part 2 Add USDZScanner](https://youtu.be/PGqr_zfhWaA)
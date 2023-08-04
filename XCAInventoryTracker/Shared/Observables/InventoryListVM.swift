//
//  InventoryListVM.swift
//  XCAInventoryTracker
//
//  Created by Alfian Losari on 30/07/23.
//

import FirebaseFirestore
import Foundation
import SwiftUI

class InventoryListViewModel: ObservableObject {
    
    @Published var items = [InventoryItem]()
    
    @MainActor
    func listenToItems() {
        Firestore.firestore().collection("items")
            .order(by: "name")
            .limit(toLast: 100)
            .addSnapshotListener { snapshot, error in
                guard let snapshot else {
                    print("Error fetching snapshot: \(error?.localizedDescription ?? "error")")
                    return
                }
                let docs = snapshot.documents
                let items = docs.compactMap {
                    try? $0.data(as: InventoryItem.self)
                }
                
                withAnimation {
                    self.items = items
                }
            }
    }
    
}

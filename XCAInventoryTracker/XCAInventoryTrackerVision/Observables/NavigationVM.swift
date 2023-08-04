//
//  NavigationVM.swift
//  XCAInventoryTrackerVision
//
//  Created by Alfian Losari on 30/07/23.
//

import Foundation
import SwiftUI

class NavigationViewModel: ObservableObject {
    
    @Published var selectedItem: InventoryItem?
    
    init(selectedItem: InventoryItem? = nil) {
        self.selectedItem = selectedItem
    }
}



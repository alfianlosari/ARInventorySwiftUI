//
//  String+Extension.swift
//  XCAInventoryTracker
//
//  Created by Alfian Losari on 30/07/23.
//

import Foundation

extension String: Error, LocalizedError {
    
    public var errorDescription: String? { self }
}

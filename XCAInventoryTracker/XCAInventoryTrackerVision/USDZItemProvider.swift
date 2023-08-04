//
//  USDZItemProvider.swift
//  XCAInventoryTrackerVision
//
//  Created by Alfian Losari on 31/07/23.
//

import FirebaseStorage
import Foundation
import UniformTypeIdentifiers

class USDZItemProvider: NSObject, Codable, NSItemProviderWriting {
    
    let usdzURL: URL
    init(usdzURL: URL) {
        self.usdzURL = usdzURL
    }
    
    static var writableTypeIdentifiersForItemProvider: [String] {
        [UTType.usdz.identifier]
    }
    
    func loadData(withTypeIdentifier typeIdentifier: String, forItemProviderCompletionHandler completionHandler: @escaping (Data?, Error?) -> Void) -> Progress? {
        guard let fileCacheURL = usdzURL.usdzFileCacheURL else {
            completionHandler(nil, "not found")
            return nil
        }
        
        if let data = try? Data(contentsOf: fileCacheURL) {
            completionHandler(data, nil)
        } else {
            Storage.storage().reference(forURL: usdzURL.absoluteString)
                .write(toFile: fileCacheURL) { result in
                    switch result {
                    case .success(let value):
                        guard let data = try? Data(contentsOf: value) else {
                            completionHandler(nil, "not found")
                            return
                        }
                        completionHandler(data, nil)
                        
                    case .failure(let failure):
                        completionHandler(nil, failure)
                    }
                    
                }
        }
        return nil
        
    }
}

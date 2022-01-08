//
//  MedialFile.swift
//  instagram Clone
//
//  Created by Stavros Pachoundakis on 2022-01-07.
//  Copyright © 2022 Stavros Pachoundakis. All rights reserved.
//

import Foundation
import SwiftUI

// Sample Model And Reels Videos...
struct MediaFile: Identifiable{
    var id = UUID().uuidString
    var url: String
    var title: String
    var isExpanded: Bool = false
}

var MediaFileJSON = [
    
   MediaFile(url: "Reel1", title: "Giveaway....."),
   MediaFile(url: "Reel2", title: "Iron Man training..."),
   MediaFile(url: "Reel3", title: "Turned myself into a pickle...."),
   MediaFile(url: "Reel4", title: "Marvel cookies....."),
   MediaFile(url: "Reel5", title: "I've been creating more vertical 30 second content"),
   MediaFile(url: "Reel6", title: "Fun Fact of the day..."),
   
]

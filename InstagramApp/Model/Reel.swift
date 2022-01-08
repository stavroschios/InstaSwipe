//
//  Reel.swift
//  instagram Clone
//
//  Created by Stavros Pachoundakis on 2022-01-07.
//  Copyright © 2022 Stavros Pachoundakis. All rights reserved.
//

import Foundation
import SwiftUI
import AVKit

struct Reel: Identifiable {

    var id = UUID().uuidString
    var player: AVPlayer?
    var mediaFile: MediaFile
}

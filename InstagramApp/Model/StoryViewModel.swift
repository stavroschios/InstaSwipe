//
//  StoryViewModel.swift
//  instagram Clone
//
//  Created by Stavros Pachoundakis on 2022-01-08.
//  Copyright © 2022 Stavros Pachoundakis. All rights reserved.
//

import Foundation
import SwiftUI

class StoryViewModel: ObservableObject{
    
    // List of Stories...
    @Published var stories : [StoryBundle] = [
    
        StoryBundle(profileName: "Elon", profileImage: "profile", stories: [
        
            Stories(imageURL: "post1s"),
            Stories(imageURL: "post3s"),
        ]),
        
        StoryBundle(profileName: "Ryan", profileImage: "profile2", stories: [
        
            Stories(imageURL: "post4s"),
            Stories(imageURL: "post5s"),
        ]),
        
        StoryBundle(profileName: "Tom", profileImage: "profile3", stories: [
        
            Stories(imageURL: "post2s"),
            
        ]),
        StoryBundle(profileName: "Chris", profileImage: "profile8", stories: [
        
            Stories(imageURL: "post1s"),
            
        ]),
        StoryBundle(profileName: "Viggo", profileImage: "profile4", stories: [
        
            Stories(imageURL: "post3s"),
            
        ]),
  
    ]
    
    // Properties...
    @Published var showStory: Bool = false
    // Will Be unique Story Bundle ID....
    @Published var currentStory: String = ""
}


struct StoryBundle: Identifiable,Hashable{
    var id = UUID().uuidString
    var profileName: String
    var profileImage: String
    var isSeen: Bool = false
    var stories: [Stories]
}

struct Stories: Identifiable,Hashable{
    var id = UUID().uuidString
    var imageURL: String
}

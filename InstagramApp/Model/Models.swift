//
//  Models.swift
//  instagram Clone
//
//  Created by Stavros Pachoundakis on 2021-12-21.
//  Copyright © 2021 Stavros Pachoundakis. All rights reserved.
//

import Foundation
import SwiftUI

// Post Model and Data

struct Models: Identifiable {
    
    var id = UUID().uuidString
    var user: String
    var name: String
    var postImage: String
    var postTitle: String
    var time: String
}

var posts = [
    Models(user: "profile", name: "Elon",postImage: "post1", postTitle: "I don't see web3 anywhere.....", time: "58 min ago"),
    Models(user: "profile2", name: "Ryan", postImage: "post2", postTitle: "New Deadpool dropping soon....", time: "24 min ago"),
    Models(user: "profile3", name: "Tom",   postImage: "post3", postTitle: "Spider man this way back home sounds nice...", time: "1 hr ago"),
    Models(user: "profile4", name: "Viggo" ,  postImage: "post4", postTitle: "For Frodo...", time: "28 min ago"),
    Models(user: "profile5", name: "Orlando" ,    postImage: "post5", postTitle: "Arrrr....", time: "2 min ago"),
    Models(user: "profile6", name: "Ian", postImage: "post6", postTitle: "There is darkness lurking around...", time: "58 min ago"),
    Models(user: "profile7", name: "Robert",  postImage: "post7", postTitle: "The lesson is that you ....", time: "24 min ago"),
    Models(user: "profile8", name: "Chris" , postImage: "post8", postTitle: "I love acting...", time: "1 hr ago"),
    Models(user: "profile9", name: "Elon " ,  postImage: "post9", postTitle: "Never give up...", time: "28 min ago"),
    Models(user: "profile1", name: "Stavros",    postImage: "post10", postTitle: "I need coffee....", time: "2 min ago"),
    
]

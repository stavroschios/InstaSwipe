//
//  FeedView.swift
//  instagram Clone
//
//  Created by Stavros Pachoundakis on 2021-12-21.
//  Copyright © 2021 Stavros Pachoundakis. All rights reserved.
//

import SwiftUI

struct FeedView: View {
    @Binding var offset: CGFloat
    @StateObject var storyData = StoryViewModel()

//    @EnvironmentObject var models = Models()
    var body: some View {
        VStack {
            HStack {
                Image("logo")
                
                Spacer()
                
                HStack(alignment: .center, spacing: 20.0) {
                    Button(action: {
//                        offset = rect.width * 2
                    }) {
                        Image("add")
                            .font(.title)
                            .foregroundColor(.primary)
                    }
                    Button(action: {
//                        offset = rect.width * 2
                    }) {
             
                        Image("heart")
                            .font(.title)
                            .foregroundColor(.primary)
                    }
              
                
                    Button(action: {
                        offset = rect.width * 2
                    }) {
                        Image("messenger")
                            .font(.title)
                            .foregroundColor(.primary)
                    }
                   
                }
            }
            .padding(.horizontal, 15)
            .padding(.vertical, 3)

            
            ScrollView(.vertical, showsIndicators: false) {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 15) {
                        Button(action: {}) {
                            VStack {
                            Image("stavros")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 55, height: 55)
                                .clipShape(Circle())
                                .overlay(
                                    Image(systemName: "plus.circle.fill")
                                        .font(.title)
                                        .foregroundColor(.blue)
                                        .background(Color.white.clipShape(Circle()))
                                        .offset(x: 8, y: 5)
                                 
                                    
                                    , alignment: .bottomTrailing
                                    
                                )
                                Text("Your Story")
                                    .font(.caption)
                                    .foregroundColor(.black).opacity(0.90)
                            }
                        }
                   
                    
//                            Story(image: "profile", name: "Elon")
//                            Story(image: "profile2", name: "Ryan")
//                            Story(image: "profile3", name: "Tom")
//                            Story(image: "profile4", name: "Viggo")
//                            Story(image: "profile5", name: "Orlando")
//                            Story(image: "profile6", name: "Ian")
//                            Story(image: "profile7", name: "Robert")
//                            Story(image: "profile8", name: "Chris")
                        
                        // Stories...
                                             ForEach($storyData.stories){ $bundle in
                                                 
                                                 // ProfileView...
                                                 // In iOS 15 we can directly pass Bindings from forEach...
                                                 
                                                 ProfileView(bundle: $bundle)
                                                     .environmentObject(storyData)
                                             }

                      
                    }
                    .padding()
                }
                
                Divider()
                    .padding(.horizontal, -15)
                
                VStack(spacing: 0) {
                    // Posts
                    ForEach(posts) { post in
                        // PostView
//                        PostCardView(post: post)
                        ForEach(posts, id: \.id){index in
                        
                            Post( name: "\(index.name)", profile: "\(index.user)", time: "\(index.time)" ,image: "\(index.postImage)", description: "\(index.postTitle)")
                        }
                    }
                }
                .padding(.bottom, 65)
            }
            
        } 
        .overlay(
            
            StoryView()
                .environmentObject(storyData)
        )
        .refreshable {
            
        }
    }
}

struct PostCardView: View {
    
    var post: Models
    @State var comment = ""
    
    var body: some View {
        
        VStack(spacing: 15) {
            
            HStack(spacing: 15) {
                Image(post.name)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 45, height: 45)
                    .clipShape(Circle())
                
                Text(post.user)
                    .fontWeight(.semibold)
                
                Spacer()
                
                Button(action: {}) {
                    Image(systemName: "line.horizontal.3")
                        .foregroundColor(.primary)
                }
            }
            
            Image(post.postImage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: rect.width - 30, height: 300)
                .cornerRadius(15)
            
            HStack(spacing: 15) {
                Button(action: {}) {
                    Image(systemName: "suit.heart.fill")
                        .font(.system(size: 25))
                }
                
                Button(action: {}) {
                    Image(systemName: "paperplane")
                        .font(.system(size: 25))
                }
                
                Spacer()
                
                Button(action: {}) {
                    Image(systemName: "bookmark")
                        .font(.system(size: 25))
                }
            }
            .foregroundColor(.primary)
            
            (
                // Binding Two Texts
                Text("\(post.user) ")
                    .fontWeight(.bold)
                
                +
                
                    Text(post.postTitle)
            )
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(6)
            
            HStack(spacing: 15) {
                
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 35, height: 35)
                    .clipShape(Circle())
                
                TextField("Add a comment...", text: $comment)
            }
            
            Text(post.time)
                .font(.caption)
                .fontWeight(.bold)
                .foregroundColor(.gray)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(6)
        }
        .padding()
    }
}

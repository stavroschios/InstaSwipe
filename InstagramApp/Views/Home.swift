//
//  home.swift
//  instagram Clone
//
//  Created by Stavros Pachoundakis on 2021-12-21.
//  Copyright © 2021 Stavros Pachoundakis. All rights reserved.
//

import SwiftUI
import SwiftUI

struct Home: View {
    @State var selectedTab = "house.fill"
    @StateObject var storyData = StoryViewModel()

    // To Update for Dark Mode
    @Environment(\.colorScheme) var scheme
    
    @Binding var offset: CGFloat
   
    var body: some View {
        
        // Instagram Home View
        TabView(selection: $selectedTab) {
            FeedView(offset: $offset)
//                .padding(.top, edges?.top)
                .tag("house.fill")
                .environmentObject(storyData)
               
            Text("Search")
                .tag("magnifyingglass")
        
            ReelsView()
                .tag("reels")
        
            Text("Shop")
                .tag("bag")
        
            AccountView()
                .tag("person.circle")
        }
        .overlay(
            // Custom TabBar
            
            VStack(spacing: 23) {
                Divider()
                    .padding(.horizontal, -15)
                
                HStack(spacing: 0) {
                    TabBarButtonForReel(image: "house.fill",isSystemImage: "house.fill" != "reels", currentTab: $selectedTab)
                        .frame(maxWidth: .infinity)
                    
                    TabBarButtonForReel(image: "magnifyingglass",isSystemImage: "magnifyingglass" != "reels", currentTab: $selectedTab)
                        .frame(maxWidth: .infinity)
                
                    TabBarButtonForReel(image: "reels",isSystemImage: "reels" != "reels", currentTab: $selectedTab)
                        .frame(maxWidth: .infinity)
                
                    TabBarButtonForReel(image: "bag",isSystemImage: "bag" != "reels", currentTab: $selectedTab)
                        .frame(maxWidth: .infinity)
                
                    TabBarButtonForReel(image: "person.circle", isSystemImage: "person.circle" != "reels",currentTab: $selectedTab)
                        
                        .frame(maxWidth: .infinity)
                }
            }
            .padding(.horizontal)
            .padding(.bottom, edges?.bottom ?? 15)
                .background(selectedTab == "reels" ? .black : .clear)

            , alignment: .bottom
        )
        .ignoresSafeArea()
    }
}

// Tab Bar Button
struct TabBarButton: View {
    
    var image: String
    @Binding var selectedTab: String
    
    var body: some View {
        Button(action: {
            selectedTab = image
        }) {
            Image(systemName: image)
                .font(.title2)
                .foregroundColor(selectedTab == image ? .primary : .gray)
        }
    }
}


struct PostView: View {
    @Binding var offset: CGFloat
    var body: some View {
        ZStack {
            // CameraView()
            // Will be Implemented
            Color.black
            
            VStack {
                HStack {
                    Button(action: {}) {
                        Image(systemName: "gear")
                            .font(.title)
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        offset = rect.width
                    }) {
                        Image(systemName: "xmark")
                            .font(.title)
                    }
                }
                .foregroundColor(.white)
                .padding()
                
                Spacer()
                
                Button(action: {}) {
                    Image(systemName: "photo")
                        .font(.title)
                }
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            }
            .padding(.top, edges?.top ?? 15)
            .padding(.bottom, edges?.bottom)
        }
    }
}

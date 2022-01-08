//
//  Post.swift
//  InstagramApp
//
//  Created by Stavros Pachoundakis on 2021-12-21.
//

import SwiftUI
// Global Usage Values
var rect = UIScreen.main.bounds
var edges = UIApplication.shared.windows.first?.safeAreaInsets
struct ContentView: View {
    
    @State var offset: CGFloat = rect.width

    var body: some View {
        // Scrollable Tabs
        GeometryReader { reader in
            
            let frame = reader.frame(in: .global)
            // Since there are three Views
            
            ScrollableTabBar(tabs: ["", "", ""], rect: frame, offset: $offset) {
                PostView(offset: $offset)
                
                Home(offset: $offset)
                
                DirectView(offset: $offset)
            }
        
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}





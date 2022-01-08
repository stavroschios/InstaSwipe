//
//  ReelView.swift
//  instagram Clone
//
//  Created by Stavros Pachoundakis on 2022-01-07.
//  Copyright © 2022 Stavros Pachoundakis. All rights reserved.
//

import Foundation
import SwiftUI


// Tab Bar Button....
struct TabBarButtonForReel: View{
    
    var image: String
    var isSystemImage: Bool
    @Binding var currentTab: String
    
    var body: some View{
        
        Button {
            withAnimation{currentTab = image}
        } label: {
            
            ZStack{
                if isSystemImage{
                    Image(systemName: image)
                        .font(.title2)
                }
                else{
                    Image(image)
                        .resizable()
                        .renderingMode(.template)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 25, height: 25)
                }
            }
            .foregroundColor(currentTab == image ? currentTab == "reels" ? .white : .primary : .gray)
            .frame(maxWidth: .infinity)
        }

    }
}


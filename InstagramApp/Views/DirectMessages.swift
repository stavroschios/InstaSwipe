//
//  DirectMessages.swift
//  instagram Clone
//
//  Created by Stavros Pachoundakis on 2021-12-21.
//  Copyright © 2021 Stavros Pachoundakis. All rights reserved.
//

import Foundation
import SwiftUI

struct DirectView: View {
    @Binding var offset: CGFloat
    @State var search = ""
    
    var body: some View {
        VStack {
            HStack(spacing: 15) {
                Button(action: {
                    offset = rect.width
                }) {
                    HStack {
                        Image(systemName: "chevron.left")
                            .font(.system(size: 20, weight: .bold))
                        
                        Text("Direct")
                            .font(.title3)
                            .fontWeight(.bold)
                    }
                }
                
                Spacer()
                
                Button(action: {}) {
                    Image(systemName: "video")
                        .font(.system(size: 20))
                        .font(.title)
                }
                
                Button(action: {}) {
                    Image(systemName: "square.and.pencil")
                        .font(.system(size: 20))
                        .font(.title)
                }
            }
            .foregroundColor(.primary)
            .padding()
            
            ScrollView {
                
                VStack(spacing: 15) {
                    HStack(spacing: 15) {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                        
                        TextField("Search", text: $search)
                    }
                    .padding(.vertical, 10)
                    .padding(.horizontal)
                    .background(Color.primary.opacity(0.06))
                    .cornerRadius(12)
                    
                    ForEach(posts) { post in
                        HStack(spacing: 15) {
                            Image(post.user)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 55, height: 55)
                                .clipShape(Circle())
                            
                            Text(post.name)
                                .fontWeight(.semibold)
                            
                            Spacer()
                            
                            Button(action: {}) {
                                Image(systemName: "camera")
                                    .font(.title2)
                            }
                            .foregroundColor(.black)
                        }
                        .padding(.top, 8)
                    }
                }
                .padding()
            }
        }
        .frame(maxWidth: .infinity)
        .padding(.top, edges?.top ?? 15)
        .padding(.bottom, edges?.bottom ?? 15)
    }
}

//
//  AccountView.swift
//  instagram Clone
//
//  Created by Stavros Pachoundakis on 2022-01-07.
//  Copyright © 2022 Stavros Pachoundakis. All rights reserved.
//

import Foundation
import SwiftUI

struct AccountView: View {
    // First Tab Image...
    @State var selectedTab: String = "square.grid.3x3"
    // For Smooth Sliding Effect
    @Namespace var animation
    
    // For Dark Mode Adoption...
    @Environment(\.colorScheme) var scheme
    
    // Offset For Sticky Segmeted Picker...
    @State var topHeaderOffset: CGFloat = 0
    
    var body: some View {
        
        VStack{
            
            HStack(spacing: 15){
                
                Button(action: {}, label: {
                    Text("stavroschios")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                })
                
                Spacer(minLength: 0)
                
                Button(action: {}, label: {
                    Image(systemName: "plus.app")
                        .font(.title)
                        .foregroundColor(.primary)
                })
                
                Button(action: {}, label: {
                    Image(systemName: "line.horizontal.3")
                        .font(.title)
                        .foregroundColor(.primary)
                })
            }
            .padding([.horizontal,.top])
            
            ScrollView(.vertical, showsIndicators: false, content: {
                
                LazyVStack(pinnedViews: [.sectionHeaders]){
                    
                    Divider()
                    
                    HStack{
                        
                        // Plus Button At Right Bottom
                        
                        Button(action: {}, label: {
                            
                            Image("stavros")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 70, height: 70)
                                
                                .clipShape(Circle())
                                .overlay(
                                
                                    Image(systemName: "plus")
                                        .foregroundColor(.white)
                                        .padding(6)
                                        .background(Color.blue)
                                        .clipShape(Circle())
                                        .padding(2)
                                        .background(Color.white)
                                        .clipShape(Circle())
                                        .offset(x: 5, y: 5)
                                    
                                    ,alignment: .bottomTrailing
                                )
                        })
                        
                        VStack{
                            Button(action:{}){
                            Text("10")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.primary)
                            }
                            Text("Posts")
                                .foregroundColor(.gray)
                        }
                        .frame(maxWidth: .infinity)
                        
                        VStack{
                            Button(action:{}){
                            Text("1099")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.primary)
                            }
                            Text("Followers")
                                .foregroundColor(.gray)
                        }
                        .frame(maxWidth: .infinity)
                        
                        VStack{
                            Button(action:{}){
                            Text("567")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.primary)
                            }
                            Text("Following")
                                .foregroundColor(.gray)
                        }
                        .frame(maxWidth: .infinity)
                    }
                    .padding()
                    
                    VStack(alignment: .leading, spacing: 4, content: {
                        Text("Stavros")
                            .fontWeight(.bold)
                            .foregroundColor(.primary)
                        
                        Text("iOS Developer")
                            .fontWeight(.semibold)
                            .foregroundColor(.gray)
                        
                        Text("I'm Stavros. I am an iOS Engineer, living in Montreal, Quebec. Visit my github to see more projects.")
                        
                        Link(destination: URL(string: "https://github.com/stavroschios")!, label: {
                            Text("GitHub")
                        })
                    })
                    .padding(.horizontal)
                    
                    // Edit Profile Button....
                    HStack(spacing: 10){
                        
                        Button(action: {}, label: {
                            Text("Edit Profile")
                                .fontWeight(.semibold)
                                .foregroundColor(.primary)
                                .padding(.vertical,10)
                                .frame(maxWidth: .infinity)
                                .background(
                                
                                    RoundedRectangle(cornerRadius: 4)
                                        .stroke(Color.gray)
                                )
                        })
                        
                        Button(action: {}, label: {
                            Image(systemName: "arrow.down")
//                                .fontWeight(.semibold)
//                                .foregroundColor(.primary)
                                .foregroundColor(.black)
                                .padding(.vertical,10)
                                .frame(maxWidth: 40)
                                .background(
                                
                                    RoundedRectangle(cornerRadius: 4)
                                        .stroke(Color.gray)
                                )
                        })
                    }
                    .padding([.horizontal,.top])
                    
                    // Stories Sections...
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        
                        HStack(spacing: 15){
                            
                            Button(action: {}, label: {
                                VStack{
                                    
                                    Image(systemName: "plus")
                                        .font(.title2)
                                        .foregroundColor(.primary)
                                        .padding(18)
                                        .background(Circle().stroke(Color.gray))
                                    
                                    Text("New")
                                        .foregroundColor(.primary)
                                }
                            })
                            Button(action: {}, label: {
                                VStack{
                                    
                                    Image("star")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 60, height: 60)
                                        
                                        .clipShape(Circle())
                                        .background(Circle().stroke(Color.gray))
                                    Text("Adventures")
                                        .foregroundColor(.primary)
                                }
                            })
                            Button(action: {}, label: {
                                VStack{
                                    
                                    Image("stavros")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 60, height: 60)

                                        .clipShape(Circle())
                                        .background(Circle().stroke(Color.gray))
                                    Text("Me!")
                                        .foregroundColor(.primary)
                                }
                            })
                        }
                        .padding([.horizontal,.top])
                        
                    })
                    
                    
                    Section(header:
                                // Sticky Top Segmented Bar...
                                HStack(spacing: 0){
                                    
                        AccountTabBarButton(image: "square.grid.3x3", isSystemImage: true, animation: animation, selectedTab: $selectedTab)
                                    
                        AccountTabBarButton(image: "reels", isSystemImage: false, animation: animation, selectedTab: $selectedTab)
                                    
                        AccountTabBarButton(image: "person.crop.square", isSystemImage: true, animation: animation, selectedTab: $selectedTab)
                                }
                                // Max Frame....
                                // Conisered as padding....
                                .frame(height: 70,alignment: .bottom)
                                .background(scheme == .dark ? Color.black : Color.white))
                    {
                     
                        
                        // Your Tab Views...
                        ZStack{
                            
                            // I'm Simply Using One Temp View....
                            LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 2), count: 3),spacing: 2, content: {
                
                                ForEach(1...10,id: \.self){index in
                                    
                                    // For Getting Width For Image...
                                    GeometryReader{proxy in
                                        let width = proxy.frame(in: .global).width
                                        
                                        ImageView(index: index, width: width)
                                    }
                                    .frame(height: 120)
                                }
                            })
                        }
                        
                    }
                }
            })
        }
    }
}

struct ImageView: View {
    
    var index: Int
    var width: CGFloat
    
    var body: some View{
        
        VStack{
            
            // Looping Image .....
            let imageName = index > 10 ? index - (10 * (index / 10))  == 0 ? 10 : index - (10 * (index / 10))  : index
            
            Image("post\(imageName)")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: width, height: 120)
            // Image Problemm
            // If use cornerradius it will solve..
                .cornerRadius(0)
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}

struct AccountTabBarButton: View {
    
    var image: String
    // Since we're having asset Image...
    var isSystemImage: Bool
    var animation: Namespace.ID
    @Binding var selectedTab: String
    
    var body: some View{
        
        Button(action: {
            withAnimation(.easeInOut){
                selectedTab = image
            }
        }, label: {
            VStack(spacing: 12){
                
                (
                    isSystemImage ? Image(systemName: image) : Image(image)
                )
                .renderingMode(.template)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 28, height: 28)
                .foregroundColor(selectedTab == image ? .primary : .gray)
                
                ZStack{
                    
                    if selectedTab == image{
                        Rectangle()
                            .fill(Color.primary)
                            // For Smooth sliding effect...
                            .matchedGeometryEffect(id: "TAB", in: animation)
                    }
                    else{
                        Rectangle()
                            .fill(Color.clear)
                    }
                }
                .frame(height: 1)
            }
        })
    }
}

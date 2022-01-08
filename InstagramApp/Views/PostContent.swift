//
//  PostContent.swift
//  InstagramApp
//
//  Created by Stavros Pachoundakis on 2021-12-21.
//

import SwiftUI


struct PostContent: View {
    var image: String = "stavros"
    @State var isLiked = false
    private let animationDuration: Double = 0.1
    private var animationScale: CGFloat {
      isLiked ? 0.7 : 1.3
    }
    @SceneStorage("isZooming") var isZooming: Bool = false
    @State private var animate = false
      
    var body: some View {
        VStack {
            Image(image)
                .resizable()
                .frame(width: .infinity)
                .aspectRatio(contentMode: .fit)
                
                .addPinchZoom()
                .offset(y: isZooming ? 0 : 0)
                .animation(.easeInOut, value: isZooming)
            
            HStack {
                HStack(spacing: 10.0) {
                    
                  Button(action: {
                      self.animate = true
                      
                      DispatchQueue.main.asyncAfter(deadline: .now() + self.animationDuration, execute: {
                          self.animate = false
                          self.isLiked.toggle()
                      })
                      
                 }, label: {
                    Image (systemName: isLiked ? "heart.fill" : "heart")
                      .resizable()
                      .aspectRatio(contentMode: .fit)
                      .frame(width: 20, height : 20)
                      . foregroundColor(isLiked ? .red : .black)
                  })
                        .scaleEffect(animate ? animationScale : 1)
                        .animation(.easeIn(duration: animationDuration))
                    
                    
                    Button(action: {}){
                        Image("comment")

                    }
                    Button(action: {}){
                        Image("share")

                    }
                }
                
                Spacer()
                Button(action: {}){
                Image("bookmark")
                }
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 9)
        }
    }
}

struct PostContent_Previews: PreviewProvider {
    static var previews: some View {
        PostContent()
    }
}


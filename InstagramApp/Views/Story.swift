//
//  Story.swift
//  InstagramApp
//
//  Created by Stavros Pachoundakis on 2021-12-21.
//

import SwiftUI

//struct Story: View {
//    var image: String = "profile"
//    var name: String = "Elon Musk"
//
//    var body: some View {
//        VStack {
//            VStack {
//                Button(action:{}) {
//                Image(image)
//                    .resizable()
//                    .aspectRatio(contentMode: .fill)
//                    .frame(width: 55, height: 55)
//                    .clipShape(Circle())
//        }
//            }
//            .overlay(
//                Circle()
//                    .stroke(LinearGradient(colors: [.red, .purple, .red, .orange, .yellow, .orange], startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 2.3)
//                    .frame(width: 55, height: 55)
//            )
//            .frame(width: 55, height: 55)
//
//            Text(name)
//                .font(.caption)
//        }
//    }
//}
//
//struct Story_Previews: PreviewProvider {
//    static var previews: some View {
//        Story()
//    }
//}
struct ProfileView: View{
    
    @Binding var bundle: StoryBundle
    
    @Environment(\.colorScheme) var scheme
    
    @EnvironmentObject var storyData: StoryViewModel
    
    var body: some View{
        Button(action:{   withAnimation{
            bundle.isSeen = true
            
            // Saving current Bundle and toggling story...
            storyData.currentStory = bundle.id
            storyData.showStory = true
        }}) {
        VStack {
        Image(bundle.profileImage)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 50, height: 50)
            .clipShape(Circle())
        // Progress Ring showing only is not seen...
            .padding(2)
            .background(scheme == .dark ? .black : .white, in: Circle())
            .padding(3)
            .overlay(
                           Circle()
                               .stroke(LinearGradient(colors: [.red, .purple, .red, .orange, .yellow, .orange], startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 2.3)
                               .frame(width: 55, height: 55)
                       
                .opacity(bundle.isSeen ? 0 : 1)
            )
        
            Text(bundle.profileName)
                .foregroundColor(.black)
                .font(.caption)
        }
        }
            .onTapGesture {
                
                withAnimation{
                    bundle.isSeen = true
                    
                    // Saving current Bundle and toggling story...
                    storyData.currentStory = bundle.id
                    storyData.showStory = true
                }
            }
    }
}

struct StoryView: View {
    @EnvironmentObject var storyData: StoryViewModel
    var body: some View {
        
        if storyData.showStory{
            
            TabView(selection: $storyData.currentStory) {
                
                // Stories...
                ForEach($storyData.stories){$bundle in
                    
                    StoryCardView(bundle: $bundle)
                        .environmentObject(storyData)
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.black)
            // Transition from Bottom...
            .transition(.move(edge: .bottom))
        }
    }
}

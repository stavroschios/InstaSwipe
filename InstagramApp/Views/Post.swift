//
//  Post.swift
//  InstagramApp
//
//  Created by Stavros Pachoundakis on 2021-12-21.
//

import SwiftUI

extension View{
    
    func getRect()->CGRect{
        return UIScreen.main.bounds
    }
}
struct Post: View {
  
    @State var text : String = ""
    
    @State var name: String = ""
    @State var profile: String = ""
    @State var time : String = ""
    
    
    @State var image: String = ""
    @State var description: String = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0.0) {
            PostHeader(profile: profile, name: name)
            
            PostContent(image: image)
              
            
            Text("Liked by Viggo and others")
                .font(.footnote)
                .frame(maxWidth: 300, alignment: .leading)
                .padding(.horizontal, 12)
            
            Text(description)
                .font(.footnote)
                .frame(maxWidth: 300, alignment: .leading)
                .padding(.horizontal, 12)
            
            Text(time)
                .font(.footnote)
                .frame(maxWidth: 300, alignment: .leading)
                .padding(.horizontal, 12)
            
            HStack {
                HStack(spacing: 7.0) {
                    Image("stavros")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .cornerRadius(50)
                    
                    TextField("Add comment...", text: $text)
                        .font(.caption)
//                        .foregroundColor(.secondary)
                }
                .padding(.horizontal, 12)
                .padding(.vertical, 9)
                
                Spacer()
                
                HStack(alignment: .center) {
                    Button(action: {}){
                        Text("😍")
                    }
                    Button(action: {}){
                    Text("😂")
                    }
                    Button(action: {}){
                    Text("🔥")
                    }
                    Button(action: {}){
                    Text("🙌")
                    }
                    Button(action: {}){
                    Image(systemName: "plus.circle")
                        .foregroundColor(.secondary)
                    }
                }
            }
        }
    }
}


struct Post_Previews: PreviewProvider {
    static var previews: some View {
        Post()
    }
}

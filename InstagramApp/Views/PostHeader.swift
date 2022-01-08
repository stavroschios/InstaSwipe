//
//  PostHeader.swift
//  InstagramApp
//
//  Created by Stavros Pachoundakis on 2021-12-21.
//

import SwiftUI

struct PostHeader: View {
    @State var profile: String = ""
    @State var name: String = ""
    var body: some View {
        HStack {
            HStack(spacing: 9.0) {
                Image("\(profile)")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .cornerRadius(50)
                
                Text("\(name)")
                    .font(.caption)
                    .fontWeight(.bold)
            }
            
            Spacer()
            
            Image("more")
        }
        .padding(.horizontal, 10)
        .padding(.vertical, 8)
    }
}


struct PostHeader_Previews: PreviewProvider {
    static var previews: some View {
        PostHeader()
    }
}

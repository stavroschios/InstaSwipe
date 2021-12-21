//
//  Stories.swift
//  InstagramApp
//
//  Created by Stavros Pachoundakis on 2021-12-21.
//

import SwiftUI

struct Stories: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 15.0) {
                Story(image: "profile", name: "Elon Musk")
                Story(image: "profile2", name: "Ryan")
                Story(image: "profile3", name: "Tom")
                Story(image: "profile4", name: "Viggo")
                Story(image: "profile5", name: "Orlando")
                Story(image: "profile6", name: "Ian")
                Story(image: "profile7", name: "Robert")
                Story(image: "profile8", name: "Chris")
            }
            .padding(.horizontal, 8)
        }
        .padding(.vertical, 10)
    }
}
struct Stories_Previews: PreviewProvider {
    static var previews: some View {
        Stories()
    }
}

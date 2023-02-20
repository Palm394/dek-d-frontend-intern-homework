//
//  PostListRow.swift
//  Dek-D internship
//
//  Created by Palm on 16/2/2566 BE.
//

import SwiftUI

struct PostListRow: View {
    var title:String
    var desc:String
    
    var body: some View {
        NavigationLink {
            DetailView(title: title, desc: desc)
        } label: {
            HStack {
                VStack(alignment: .leading) {
                    Text(title)
                        .bold()
                        .padding(.bottom,1)
                    Text(desc)
                        .lineLimit(1)
                }
                Spacer()
            }
        }
    }
}

struct PostListRow_Previews: PreviewProvider {
    static var previews: some View {
        PostListRow(title: "Test",desc: "some description")
    }
}

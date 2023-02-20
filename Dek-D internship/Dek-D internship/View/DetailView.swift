//
//  DetailView.swift
//  Dek-D internship
//
//  Created by Palm on 16/2/2566 BE.
//

import SwiftUI

struct DetailView: View {
    var title:String
    var desc:String
    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text(title)
                        .bold()
                    Text(desc)
                }
                Spacer()
            }
            Spacer()
        }
        .padding(10)
        .padding(.vertical,-50)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(title: "Test Title Detail", desc: "Test description")
    }
}

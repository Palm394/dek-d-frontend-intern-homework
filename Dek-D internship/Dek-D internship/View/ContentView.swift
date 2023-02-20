//
//  ContentView.swift
//  Dek-D internship
//
//  Created by Palm on 16/2/2566 BE.
//

import SwiftUI

struct item_detail:Hashable {
    var title: String
    var desc: String
}

struct ContentView: View {
    @State private var showAlert = false
    @State private var new_title: String = ""
    @State private var new_desc: String = ""
        
    @State var items_data =
    [item_detail(title: "Module", desc: "some module api doc very good commit i guess naja hi yaaa"),
     item_detail(title: "Dekd", desc: "Good company")]
    
    func reset_input(){
        new_title = ""
        new_desc = ""
    }
    
    var body: some View {
        NavigationView() {
            List($items_data,id:\.self,editActions: .delete) { $item in
                PostListRow(title: item.title, desc: item.desc)
            }
            .toolbar{
                Button(action: {
                    showAlert = true
                }, label: {
                    Image(systemName: "plus")
                        .bold()
                })
            }
            .alert("New item",isPresented: $showAlert,actions: {
                TextField("Title", text: $new_title)
                TextField("Description", text: $new_desc, axis: .vertical)
                
                Button("Cancel", role: .cancel ,action: {})
                Button("Add", action: {
                    items_data.insert(item_detail(title: new_title, desc: new_desc),at: items_data.count)
                    reset_input()
                })
            })
            .navigationBarTitle("Dek-d")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (2nd generation)", "iPhone 14 Pro Max"], id: \.self) { deviceName in
            ContentView()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}

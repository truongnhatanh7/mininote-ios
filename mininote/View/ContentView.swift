//
//  ContentView.swift
//  mininote
//
//  Created by Truong Nhat Anh on 01/06/2022.
//

import SwiftUI

struct ContentView: View {
    var folders = [Folder(id: 1, name: "test")]
    
    
    var body: some View {
      NavigationView {
          VStack {
              List {

                 Section(header:
                    Text("On My iPhone")) {
                     ForEach(folders, id: \.self) { fr in
                         FolderRow(folder: fr)
                     }
                 }
                    .toolbar {
                        EditButton()
                    }
              }
              .navigationBarTitle("Folders")

          }


      }
      .tint(.yellow)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


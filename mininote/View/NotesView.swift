//
//  NotesView.swift
//  mininote
//
//  Created by Truong Nhat Anh on 01/06/2022.
//

import SwiftUI

struct NotesView: View {
    var selectedFolder: Folder?
    @State private var searchText = ""
    var body: some View {
        NavigationView {
            List {
                
            }.navigationBarTitle("Notes")
                .searchable(text: $searchText)
        }
    }
}

struct NotesView_Previews: PreviewProvider {
    static var previews: some View {
        NotesView()
    }
}

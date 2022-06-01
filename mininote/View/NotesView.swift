//
//  NotesView.swift
//  mininote
//
//  Created by Truong Nhat Anh on 01/06/2022.
//

import SwiftUI

struct NotesView: View {
    var selectedFolder: Folder?
    var notes = [Note(id: 1, content: "fasdl;fjal;s"), Note(id: 2, content: "SDvja;sldvkjas;dlvasdhfhjasdhfaksjdhflkasdhfkjashdkjfhaskjdhfjkasdhflkasdhfkjas")]
    @State private var searchText = ""
    var body: some View {

            List {
                ForEach(notes, id: \.self) { note in

                    NavigationLink(note.content, destination: SelectedNoteView(content: note.content))
                        .lineLimit(1)
                    
                }
            }.navigationBarTitle("Notes")
                .searchable(text: $searchText)
        
    }
}

struct NotesView_Previews: PreviewProvider {
    static var previews: some View {
        NotesView()
    }
}

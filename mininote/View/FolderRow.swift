//
//  FolderRow.swift
//  mininote
//
//  Created by Truong Nhat Anh on 01/06/2022.
//

import SwiftUI

struct FolderRow: View {
    var folder: Folder?
    
    var body: some View {
        NavigationLink(destination: NotesView(selectedFolder: folder)) {
            Text(folder!.name)
        }
            
    }
}

struct FolderRow_Previews: PreviewProvider {
    static var previews: some View {
        FolderRow(folder: Folder(id: 1, name: "test"))
    }
}

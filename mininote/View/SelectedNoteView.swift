//
//  SelectedNoteView.swift
//  mininote
//
//  Created by Truong Nhat Anh on 01/06/2022.
//

import SwiftUI

struct SelectedNoteView: View {
    @State var content: String
    var body: some View {
        VStack {
            TextEditor(text: $content)
        }
        .onTapGesture { hideKeyboardAndSave() }
        .padding(EdgeInsets.init(top: 10, leading: 32, bottom: 10, trailing: 32))
    }
    
    private func hideKeyboardAndSave() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
        
    }
}

struct SelectedNoteView_Previews: PreviewProvider {
    static var previews: some View {
        SelectedNoteView(content: "asdjkf;a")
    }
}

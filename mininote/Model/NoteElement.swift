//
//  NoteElement.swift
//  mininote
//
//  Created by Truong Nhat Anh on 01/06/2022.
//

import Foundation
import SwiftUI

struct NoteElement: Hashable, Identifiable {
    var id: Int
    static func == (lhs: NoteElement, rhs: NoteElement) -> Bool {
        return true
    }
    
}

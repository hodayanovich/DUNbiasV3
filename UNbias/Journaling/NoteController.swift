//
//  NoteController.swift
//  Notes
//
//  Created by Paul Solt on 4/24/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

import Foundation

class NoteController {
    
    init() {
        // Create test data
        createNote(withText: "This past week, I tried to work a lot on my bias. I learned a lot from Tia at Kode with Klossy, and with her tolls I'm ready to keep wotking on this in the future.")
    }
    
    func createNote(withText text: String) {
        let note = Note(text: text)
        
        notes.append(note)
    }
    
    var notes: [Note] = []      // Array of notes
}

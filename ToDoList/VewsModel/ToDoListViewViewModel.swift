//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by Galina on 26.01.2026.
//

// ViewModel for list of items views
// Primary tab

import FirebaseFirestore
import Foundation
import Combine

class ToDoListViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    func delete(id: String) {
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
    
}

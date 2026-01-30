//
//  ToDoListItemViewViewModel.swift
//  ToDoList
//
//  Created by Galina on 26.01.2026.
//

// ViewModel for single to do list item view (each row in items list)
// Primary tab

import FirebaseAuth
import FirebaseFirestore
import Foundation
import Combine

class ToDoListItemViewViewModel: ObservableObject {
    init() {}
    
    func toggleIsDone(item: ToDoListItem) {
        var itemCopy = item
        itemCopy.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(itemCopy.id)
            .setData(itemCopy.asDictionary())
    }
}

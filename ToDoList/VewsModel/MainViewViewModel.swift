//
//  MainViewViewModel.swift
//  ToDoList
//
//  Created by Galina on 26.01.2026.
//

import FirebaseAuth
import Foundation
import Combine

class MainViewViewModel: ObservableObject {
    @Published var currentUserId: String = ""
    private var handler: AuthStateDidChangeListenerHandle?
    
    init() {
        self.handler = Auth.auth().addStateDidChangeListener{ [weak self] _, user in
            DispatchQueue.main.async {
                self?.currentUserId = user?.uid ?? ""
            }
        }
    }
     
    public var isSignedIn: Bool {
        return Auth.auth().currentUser != nil
    }
}

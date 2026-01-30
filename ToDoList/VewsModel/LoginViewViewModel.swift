//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by Galina on 26.01.2026.
//

import FirebaseAuth
import Foundation
import Combine

class LoginViewViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init() {}
    
    func login() {
        guard validate() else {
            return
        }
        
        Auth.auth().signIn(withEmail: email, password: password)
        
    }
    
    private func validate() -> Bool {
        errorMessage = ""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty, !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            
            errorMessage = "Пожалуйста, заполните все поля"
            return false
        }
        
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Пожалуйста, введите корректный адрес электронной почты"
            return false
        }
        
        return true
    }
}

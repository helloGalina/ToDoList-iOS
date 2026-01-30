//
//  RegisterView.swift
//  ToDoList
//
//  Created by Galina on 26.01.2026.
//

import SwiftUI

struct RegisterView: View {
    
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        VStack {
            // Header
            HeaderView(title: "Создай аккаунт",
                       subtitle: "чтобы ничего не забыть",
                       angle: -15,
                       background: .orange)
            
            Form {
                TextField("Имя", text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                
                TextField("Email адрес", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                
                SecureField("Пароль", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(title: "Создать аккаунт",
                         background: .green) {
                    viewModel.register()
                }
                .padding()
            }
            .offset(y: -50)
            
            Spacer()
        }
    }
    
}

#Preview {
    RegisterView()
}

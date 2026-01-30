//
//  LoginView.swift
//  ToDoList
//
//  Created by Galina on 26.01.2026.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                // Header
                HeaderView(title: "Мой день",
                           subtitle: "Сегодня. Завтра. Всегда",
                           angle: 15,
                           background: .pink)

                
                
                Form {
                    
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.red)
                    }
                    
                    TextField("Email Address", text:$viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                    SecureField("Password", text:$viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButton(title: "Войти",
                             background: .blue) {
                        viewModel.login()
                    }
                }
                .offset(y: -50)
                
                // Create Account
                VStack {
                    Text("Впервые здесь?")
                    
                        // Окно регистрации
                        NavigationLink("Создать аккаунт", destination: RegisterView())
                    
                }
                .padding(.bottom, 50)
                
                Spacer()
            }
        }
    }
}


#Preview {
    LoginView()
}

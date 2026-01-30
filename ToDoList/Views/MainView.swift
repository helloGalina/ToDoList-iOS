//
//  ContentView.swift
//  ToDoList
//
//  Created by Galina on 26.01.2026.
//

import SwiftUI

struct MainView: View {
    
    @StateObject var viewModel = MainViewViewModel()
    
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
            accountView
        } else {
            LoginView()
        }
    }
    
    @ViewBuilder
    var accountView: some View {
        TabView {
            ToDoListView(userId: viewModel.currentUserId)
                .tabItem {
                    Label("Главная", systemImage: "house")
                }
            
            ProfileView()
                .tabItem {
                    Label("Профиль", systemImage: "person.circle")
                }
        }
    }
}

#Preview {
    MainView()
}

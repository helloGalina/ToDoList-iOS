//
//  TLButton.swift
//  ToDoList
//
//  Created by Galina on 27.01.2026.
//

import SwiftUI

struct TLButton: View {
    
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                
                Text(title)
                    .foregroundColor(Color.white)
                    .font(.headline)
                    .bold()
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
        }
    }
}

#Preview {
    TLButton(title: "Value",
             background: .pink) {
        // Action
    }
}

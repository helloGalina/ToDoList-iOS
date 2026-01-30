//
//  User.swift
//  ToDoList
//
//  Created by Galina on 26.01.2026.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}

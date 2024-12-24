//
//  User.swift
//  ToDoListApp
//
//  Created by Jonathan Hesler on 12/23/24.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}

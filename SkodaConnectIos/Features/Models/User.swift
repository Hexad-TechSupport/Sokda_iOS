//
//  User.swift
//  SkodaConnectIos
//
//  Created by Utkarsh Jaiswal on 25/10/24.
//

	
import Foundation
struct User: Codable {
    let id: String
    let email: String
    let password: String
    let firstName: String
    let lastName: String
    let phone: String
    let address: String
}

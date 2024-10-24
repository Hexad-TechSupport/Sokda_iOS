//
//  LoginViewModel.swift
//  SkodaConnectIos
//
//  Created by dhananjay-m-create on 23/10/24.
//

import Foundation
import SwiftUI

class LoginViewModel: ObservableObject {

    @Published var username: String = ""
    @Published var password: String = ""

    func login() {
//        if username == k.user.username && password == k.user.password {
//            self.showsAlert.toggle()
//        }
        
//        LoginAction(
//            parameters: LoginRequest(
//                username: username,
//                password: password
//            )
//        ).call { _ in
//            // Login successful, navigate to the Home screen
//        }
    }
}

//
//  AuthViewModel.swift
//  SkodaConnectIos
//
//  Created by Utkarsh Jaiswal on 25/10/24.
//

class AuthViewModel: ObservableObject {
    @Published var user: User?
    @Published var errorMessage: String?

    let authAPI = AuthAPI()

    func login(email: String, password: String) {
        authAPI.login(email: email, password: password) { [weak self] result in
            switch result {
            case .success(let user):
                self?.user = user
            case .failure(let error):
                self?.errorMessage = error.localizedDescription
            }
        }
    }

    func signup(email: String, password: String) {
        authAPI.signup(email: email, password: password) { [weak self] result in
            switch result {
            case .success(let user):
                self?.user = user
            case .failure(let error):
                self?.errorMessage = error.localizedDescription
            }
        }
    }
}

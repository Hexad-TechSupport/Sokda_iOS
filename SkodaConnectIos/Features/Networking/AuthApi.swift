//
//  AuthApi.swift
//  SkodaConnectIos
//
//  Created by Utkarsh Jaiswal on 25/10/24.
//

class AuthAPI {
    private let baseURL = "https://api.example.com"

    func login(email: String, password: String, completion: @escaping (Result<User, Error>) -> Void) {
        let params = ["email": email, "password": password]
        let url = "\(baseURL)/auth/login"
        APIService.shared.request(url, method: .post, parameters: params, completion: completion)
    }

    func signup(email: String, password: String, completion: @escaping (Result<User, Error>) -> Void) {
        let params = ["email": email, "password": password]
        let url = "\(baseURL)/auth/signup"
        APIService.shared.request(url, method: .post, parameters: params, completion: completion)
    }
}

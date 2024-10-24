//
//  LoginResponse.swift
//  SkodaConnectIos
//
//  Created by dhananjay-m-create on 23/10/24.
//

import Foundation

struct LoginResponse: Decodable {
    let data: LoginResponseData
}

struct LoginResponseData: Decodable {
    let accessToken: String
    let refreshToken: String
    
}

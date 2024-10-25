//
//  UserSession.swift
//  SkodaConnectIos
//
//  Created by Utkarsh Jaiswal on 25/10/24.
//

class UserSession {
    static let shared = UserSession()

    private let userDefaults = UserDefaults.standard

    var token: String? {
        get { return userDefaults.string(forKey: "token") }
        set { userDefaults.setValue(newValue, forKey: "token") }
    }

    func logout() {
        userDefaults.removeObject(forKey: "token")
    }
}

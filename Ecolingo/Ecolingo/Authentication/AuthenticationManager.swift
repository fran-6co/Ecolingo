//
//  AuthenticationManager.swift
//  Ecolingo
//
//  Created by Keerthi Siva on 25/12/24.
//

import Foundation
import FirebaseAuth

final class AuthenticationManager{
    
    static let shared = AuthenticationManager()
    private init(){ }
    
    
    func createUser(email: String, password: String) async throws{
        let authDataResult = try await Auth.auth().createUser(withEmail: email, password: password)
        authDataResult.user
    }
    
}

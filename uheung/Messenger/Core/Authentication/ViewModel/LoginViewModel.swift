//
//  LoginViewModel.swift
//  uheung
//
//  Created by 강치우 on 11/2/23.
//

import SwiftUI

class LoginViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    
    func login() async throws {
        try await AuthService().login(withEmail: email, password: password)
    }
}

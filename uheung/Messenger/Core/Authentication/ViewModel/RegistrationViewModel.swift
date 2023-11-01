//
//  RegistrationViewModel.swift
//  uheung
//
//  Created by 강치우 on 11/2/23.
//

import SwiftUI

class RegistrationViewModel: ObservableObject {
     
    @Published var email = ""
    @Published var password = ""
    @Published var fullname = ""
    
    func createUser() async throws {
        try await AuthService().createUser(withEmail: email, password: password, fullname: fullname)
    }
}

//
//  User.swift
//  uheung
//
//  Created by 강치우 on 11/1/23.
//

import Foundation

struct User: Codable, Identifiable, Hashable {
    var id = NSUUID().uuidString
    let fullname: String
    let email: String
    var profileImageUrl: String?
}

extension User {
    static let MOCK_USER = User(fullname: "홍세희", email: "sayhong@gmail.com", profileImageUrl: "sayhong")
}

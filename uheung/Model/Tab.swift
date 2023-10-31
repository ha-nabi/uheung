//
//  Tab.swift
//  uheung
//
//  Created by 강치우 on 10/31/23.
//

import SwiftUI

/// Tab's
enum Tab: String, CaseIterable {
    case home = "bird"
    case favorite = "heart"
    case chat = "paperplane"
    case profile = "person.crop.circle"
    
    var title: String {
        switch self {
        case .home:
            return "Home"
        case .favorite:
            return "Favorite"
        case .chat:
            return "Chat"
        case .profile:
            return "Profile"
        }
    }
}

// Animated SF Tab Model
struct AnimatedTab: Identifiable {
    var id: UUID = .init()
    var tab: Tab
    var isAnimating: Bool?
}

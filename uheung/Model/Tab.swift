//
//  Tab.swift
//  uheung
//
//  Created by 강치우 on 10/31/23.
//

import SwiftUI

/// Tab's
enum Tab: String, CaseIterable {
    case home = "house.fill"
    case favorite = "heart.fill"
    case chat = "paperplane.fill"
    case profile = "person.crop.circle.fill"
    
    var title: String {
        switch self {
        case .home:
            return "홈"
        case .favorite:
            return "즐겨찾기"
        case .chat:
            return "대화"
        case .profile:
            return "프로필"
        }
    }
}

// Animated SF Tab Model
struct AnimatedTab: Identifiable {
    var id: UUID = .init()
    var tab: Tab
    var isAnimating: Bool?
}

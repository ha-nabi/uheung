//
//  SettingsOptionsViewModel.swift
//  uheung
//
//  Created by 강치우 on 10/31/23.
//

import SwiftUI

enum SettingsOptionsViewModel: Int, CaseIterable, Identifiable {
    case darkMode
    case activeStatus
    case accessibility
    case privacy
    case notifications
    
    var title: String {
        switch self {
            
        case .darkMode: return "다크 모드"
        case .activeStatus: return "활동 상태"
        case .accessibility: return "접근성"
        case .privacy: return "개인정보 보호 및 안전"
        case .notifications: return "알림 및 소리"
        }
    }
    
    var imageName: String {
        switch self {
        case .darkMode: return "moon.circle.fill"
        case .activeStatus: return "message.badge.circle.fill"
        case .accessibility: return "person.circle.fill"
        case .privacy: return "lock.circle.fill"
        case .notifications: return "bell.circle.fill"
        }
    }
    
    var ImageBackgroundColor: Color {
        switch self {
    
        case .darkMode: return .black
        case .activeStatus: return Color(.systemGreen)
        case .accessibility: return .black
        case .privacy: return Color(.systemBlue)
        case .notifications: return Color(.systemPurple)
        }
    }
    
    var id: Int { return self.rawValue }
}

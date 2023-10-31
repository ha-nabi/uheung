//
//  ProfileViewModel.swift
//  uheung
//
//  Created by 강치우 on 11/1/23.
//

import SwiftUI
import PhotosUI

// 이미지 선택 해서 불러오기
class ProfileViewModel: ObservableObject {
    @Published var selectedItem: PhotosPickerItem? {
        didSet { Task { try await loadImage() }  }
    }
    
    @Published var profileImage: Image?
    
    func loadImage() async throws {
        guard let item = selectedItem else { return }
        guard let imageData = try await item.loadTransferable(type: Data.self) else { return }
        guard let uiImage = UIImage(data: imageData) else { return }
        self.profileImage = Image(uiImage: uiImage)
    }
}

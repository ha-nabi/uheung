//
//  ProfileView.swift
//  uheung
//
//  Created by 강치우 on 10/31/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            // header
            VStack {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .foregroundColor(Color(.systemGray4))
                
                Text("홍세희")
                    .font(.title2)
                    .fontWeight(.semibold)
            }
            
            // list
            
            List {
                Section {
                    ForEach(SettingsOptionsViewModel.allCases) { option in
                        HStack {
                            Image(systemName: option.imageName)
                                .resizable()
                                .frame(width: 24, height: 24)
                                .foregroundColor(option.ImageBackgroundColor)
                            
                            Text(option.title)
                                .font(.subheadline)
                        }
                    }
        
                }
                
                Section {
                    Button("나가기") {
                        
                    }
                    
                    Button("계정 삭제") {
                        
                    }
                }
                .foregroundColor(.red)
            }
        }
    }
}

#Preview {
    ProfileView()
}

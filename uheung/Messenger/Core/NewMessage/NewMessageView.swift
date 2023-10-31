//
//  NewMessageView.swift
//  uheung
//
//  Created by 강치우 on 10/31/23.
//

import SwiftUI

struct NewMessageView: View {
    @State private var seachText = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            ScrollView {
                TextField("받는 사람:", text: $seachText)
                    .frame(height: 44)
                    .padding(.horizontal)
                    .background(Color(.systemGroupedBackground))
                
                Text("친구")
                    .foregroundColor(.gray)
                    .font(.footnote)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                
                ForEach(0...10, id: \.self) { user in
                    VStack {
                        HStack {
                            Image(systemName: "person.circle.fill")
                                .resizable()
                                .frame(width: 32, height: 32)
                                .foregroundColor(Color(.systemGray4))
                            
                            Text("홍세희")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                            
                            Spacer()
                        }
                        .padding(.leading)
                        
                        Divider()
                            .padding(.leading, 40)
                    }
                }
            }
            .navigationTitle("새 메세지")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("취소") {
                        dismiss()
                    }
                    .foregroundColor(.black)
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        NewMessageView()
    }
}


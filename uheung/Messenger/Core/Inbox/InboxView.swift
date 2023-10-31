//
//  InboxView.swift
//  uheung
//
//  Created by 강치우 on 10/31/23.
//

import SwiftUI

struct InboxView: View {
    @State private var showNewMessageView = false
    var body: some View {
        NavigationStack {
            ScrollView {
                ActiveNowView()
                
                List {
                    ForEach(0...10, id: \.self) { message in
                        InboxRowView()
                    }
                }
                .listStyle(PlainListStyle())
                .frame(height: UIScreen.main.bounds.height - 120)
            }
            .fullScreenCover(isPresented: $showNewMessageView, content: {
                NewMessageView()
            })
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    HStack {
                        Image(systemName: "person.circle.fill")
                        
                        Text("채팅")
                            .font(.title2)
                            .fontWeight(.semibold)
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        showNewMessageView.toggle()
                    } label: {
                        Image(systemName: "square.and.pencil.circle.fill")
                            .resizable()
                            .frame(width: 32, height: 32)
                            .foregroundStyle(.black, Color(.systemGray5))
                    }
                }
            }
        }
    }
}

#Preview {
    InboxView()
}

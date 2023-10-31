//
//  RegistrationView.swift
//  uheung
//
//  Created by 강치우 on 10/31/23.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var fullname = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack {
            Spacer()
            // logo image
            Image("lion-logo")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .shadow(radius: 15)
                .padding()
            
            // text fields
            
            VStack {
                TextField("사용자 이름, 또는 이메일", text: $email)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
                
                TextField("이름", text: $fullname)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
                
                SecureField(" 비밀번호", text: $password)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
            }
            
            Button {
                print("Handle login")
            } label: {
                Text("회원가입")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 360, height: 44)
                    .background(Color(.systemBlue))
                    .cornerRadius(10)
            }
            .padding(.vertical)
            
            Spacer()
            
            Divider()
            
            Button {
                dismiss()
            } label: {
                HStack(spacing: 3) {
                    Text("이미 가입되어 있으신가요?")
                    
                    Text("로그인")
                        .fontWeight(.semibold)
                }
                .font(.footnote)
            }
            .padding(.vertical)

        }
    }
}

#Preview {
    RegistrationView()
}

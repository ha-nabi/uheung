//
//  LoginView.swift
//  uheung
//
//  Created by 강치우 on 10/31/23.
//

import SwiftUI
import Firebase

struct LoginView: View {
    @StateObject var viewModel = LoginViewModel()
    
    var body: some View {
        NavigationStack {
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
                    TextField("사용자 이름, 또는 이메일", text: $viewModel.email)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal, 24)
                    
                    SecureField(" 비밀번호", text: $viewModel.password)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal, 24)
                }
                
                //forgot password
                
                Button {
                    
                } label: {
                    Text("비밀번호를 잊으셨나요?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing, 28)
                        .foregroundStyle(.gray)
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                
                // login button
                
                Button {
                    Task { try await viewModel.login() } 
                } label: {
                    Text("로그인")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 360, height: 44)
                        .background(Color(.systemOrange))
                        .cornerRadius(10)
                }
                .padding(.vertical)
                
                // google login
                
                HStack {
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                    
                    Text("또는")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                }
                .foregroundColor(.gray)
                
                HStack {
                    Image("google-icon")
                        .resizable()
                        .frame(width: 25, height: 25)
                    
                    Text("Google으로 로그인")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(.systemGray))
                }
                .padding(.top, 8)
                
                Spacer()
                
                // sign up link
                
                NavigationLink {
                    RegistrationView()
                        .navigationBarBackButtonHidden()
                } label: {
                    HStack(spacing: 3) {
                        Text("계정이 없으신가요?")
                            .foregroundStyle(.orange)
                        
                        Text("가입하기")
                            .fontWeight(.semibold)
                            .foregroundStyle(.orange)
                    }
                    .font(.footnote)
                }
                .padding(.vertical)
            }
        }
    }
}

#Preview {
    LoginView()
}

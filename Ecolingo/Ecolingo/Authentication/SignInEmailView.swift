//
//  SignInEmailView.swift
//  Ecolingo
//
//  Created by Keerthi Siva on 25/12/24.
//

import SwiftUI

@MainActor
final class SignInEmailViewModel: ObservableObject{
    @Published var email = ""
    @Published var password = ""
    
    func SignIn() async throws{
        guard !email.isEmpty, !password.isEmpty else{
            print("No email or password")
            return
        }
        try await AuthenticationManager.shared.createUser(email: email, password: password)
    }
}

struct SignInEmailView: View {
    @StateObject private var viewModel = SignInEmailViewModel()
    @Binding var showSignInView: Bool
    
    var body: some View{
        NavigationStack{
            VStack{
                TextField("Email.. ", text: $viewModel.email )
                    .padding()
                    .background(Color.gray.opacity(0.4))
                    .cornerRadius(10)
                
                SecureField("Password.. ", text: $viewModel.password )
                    .padding()
                    .background(Color.gray.opacity(0.4))
                    .cornerRadius(10)
                
                Button{
                    Task{
                        do{
                            try await viewModel.SignIn()
                        }catch{
                            
                        }
                    }
                }label: {
                    Text("Sign In")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                Spacer()
            }
            .padding()
            .navigationTitle("Sign In With Email")
        }
    }
}
    

struct SigninEmailView_Previews: PreviewProvider{
    static var previews: some View{
        SignInEmailView(showSignInView: .constant(false))
    }
}

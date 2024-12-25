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
}

struct SignInEmailView: View {
    @StateObject private var viewModel = SignInEmailViewModel()
    
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
        SignInEmailView()
    }
}

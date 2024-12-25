//
//  AuthenticationView.swift
//  Ecolingo
//
//  Created by Keerthi Siva on 25/12/24.
//

import SwiftUI

struct AuthenticationView: View {
    var body: some View {
        
        VStack{
            NavigationLink{
                SignInEmailView()
            }label:{
                Text("Sign In With Email")
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
        .navigationTitle("Sign In")
    }
}

struct AuthenticationView_Preview: PreviewProvider{
    static var previews: some View{
        NavigationStack{
            AuthenticationView()
        }
    }
}

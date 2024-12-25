//
//  rootView.swift
//  Ecolingo
//
//  Created by Keerthi Siva on 29/12/24.
//

import SwiftUI

struct rootView: View {
    @State private var showSignInView: Bool = false
    
    var body: some View {
        ZStack{
            NavigationStack{
                SettingsView(showSignInView: $showSignInView)
            }
        }
        .onAppear{
            let authuser = try? AuthenticationManager.shared.getAuthenticatedUser()
            self.showSignInView = authuser == nil 
        }
        .fullScreenCover(isPresented: $showSignInView){
            NavigationStack{
                AuthenticationView(showSignInView: $showSignInView)
            }
        }
    }
}

struct rootView_Previews: PreviewProvider{
    static var previews: some View{
        rootView()
    }
}

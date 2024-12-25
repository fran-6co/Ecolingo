//
//  SettingsView.swift
//  Ecolingo
//
//  Created by Keerthi Siva on 29/12/24.
//

import SwiftUI

@MainActor
final class SettingViewModel: ObservableObject{
    
    func signout() throws{
        try AuthenticationManager.shared.signOut()
    }
}

struct SettingsView: View {
    
    @StateObject private var viewModel = SettingViewModel()
    @Binding var showSignInView: Bool
    var body: some View {
        List{
            Button("Log Out"){
                Task{
                    do {
                        try viewModel.signout()
                        showSignInView = true
                    }catch{
                        print(error)
                    }
                }
                
            }
            
        }
        .navigationBarTitle("Settings")
    }
}

struct SettingsView_Previews: PreviewProvider{
    static var previews: some View{
        NavigationStack{
            SettingsView(showSignInView: .constant(false))
        }
    }
}

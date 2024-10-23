//
//  Login.swift
//  SkodaConnectIos
//
//  Created by dhananjay-m-create on 23/10/24.
//

import SwiftUI

import SwiftUI

struct LoginScreen: View {
    
    @ObservedObject var viewModel: LoginViewModel = LoginViewModel()
    @State var showsAlert = false

    var body: some View {
        VStack {
            
            Spacer()
            
            VStack {
                TextField(
                    "Username",
                    text: $viewModel.username
                )
                .disableAutocorrection(true)
                .padding(.top, 20)
                
                Divider()
                
                SecureField(
                    "Password",
                    text: $viewModel.password
                )
                .padding(.top, 20)
                
                Divider()
            }
            
            Spacer()
            
            Button(
                action: {
                    if viewModel.username == k.user.username && viewModel.password == k.user.password {
                        self.showsAlert.toggle()
                    }
                },
                label: {
                    Text("Login")
                        .font(.system(size: 24, weight: .bold, design: .default))
                        .frame(maxWidth: .infinity, maxHeight: 60)
                        .foregroundColor(Color.white)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
            )
            .alert(isPresented: self.$showsAlert) {
                        Alert(title: Text("Login successfull"))
                    }
        }
        .padding(30)
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}

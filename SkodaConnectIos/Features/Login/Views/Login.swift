//
//  Login.swift
//  SkodaConnectIos
//
//  Created by Utkarsh Jaiswal on 23/10/24.
//


import SwiftUI

struct LoginScreen: View {
    
    @ObservedObject var viewModel: LoginViewModel = LoginViewModel()
    @State var showsAlert = false

    var body: some View {
        VStack {
            VStack {
                Image(.logo)
                    .resizable()
                    .aspectRatio(contentMode: .fit).frame(width: 400, height: 200, alignment: .top)
                Text("Login")
                    .font(Font.custom("SKODANext-Bold", size: 24))
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Email/Username")
                        .font(Font.custom("SKODANext-Regular", size: 10))
                        .foregroundStyle(Color("BlackLight"))
                    TextField(
                        "Username",
                        text: $viewModel.username
                    )
                    .disableAutocorrection(true)
                    .frame(height: 50)
                    .border(Color("TextFieldBorder"), width: 2)
                    .cornerRadius(10)
                }
                .padding(.top, 40)

                VStack(alignment: .leading, spacing: 10) {
                    Text("Email/Username")
                        .font(Font.custom("SKODANext-Regular", size: 10))
                        .foregroundStyle(Color("BlackLight"))
                    SecureField(
                        "Password",
                        text: $viewModel.password
                    )
                    .frame(height: 50)
                    .border(Color("TextFieldBorder"), width: 2)
                    .cornerRadius(10)
                }
                .padding(.top, 20)
                
                HStack {
                                Spacer()
                    Button(
                        action: {
                        
                        },
                        label: {
                            Text("Forgot password?")
                                .font(Font.custom("SKODANext-Regular", size: 12))
                                .foregroundColor(Color("ForgotRed"))
                                
                        }
                    )
                                    .padding(.trailing, 0)
                            }
                
            }
                        
            Button(
                action: {
                    if viewModel.username == k.user.username && viewModel.password == k.user.password {
                        self.showsAlert.toggle()
                    }
                },
                label: {
                    Text("Login")
                        .font(Font.custom("SKODANext-Bold", size: 20))
                        .frame(maxWidth: .infinity, maxHeight: 60)
                        .foregroundColor(Color.white)
                        .background(Color("GreenButton"))
                        .cornerRadius(10)
                }
            )
            .padding(.top, 30)
            .alert(isPresented: self.$showsAlert) {
                        Alert(title: Text("Login successfull"))
                    }
            
            HStack(spacing: 5) {
                Text("New user?")
                    .font(Font.custom("SKODANext-Regular", size: 16))
                    .foregroundStyle(Color.black)
                
                Button(
                    action: {
                    
                    },
                    label: {
                        Text("Forgot password?")
                            .font(Font.custom("SKODANext-Regular", size: 16))
                            .foregroundColor(Color("GreenButton"))
                            
                    }
                )
                .padding(.leading, 0)
                        }
            .padding(.top, 10)

        }
        .padding(30)
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}

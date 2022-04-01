//
//  LoginView.swift
//  spiderman
//
//  Created by Avinash.Kandaswamy on 3/29/22.
//

import SwiftUI

struct LoginView: View {
    @State var email=""
    @State var password=""
    var body: some View {
        VStack {
            Spacer()
            Spacer()
            Spacer()
            Text("Taara").font(.system(size: 64,weight: .semibold))
                .foregroundColor(Color.blue)
                .multilineTextAlignment(.center)
                
            HStack(){
                Image(systemName: "envelope")
                    .foregroundColor(.gray)
                TextField("Email",text: $email)
            }
            .padding(.horizontal, 10.0)
            .cornerRadius(8)
            .frame(height:60)
            .background(.white)
            
            HStack(){
                Image(systemName: "lock")
                    .foregroundColor(.gray)
                SecureField("Password",text: $password)
            }
            .padding(.horizontal, 10.0)
            .cornerRadius(8)
            .frame(height:60)
                .background(.white)
            HStack(){
                Button("Login", action: {})
                    .padding(.horizontal)
            }
            .padding(.horizontal, 10.0)
            .cornerRadius(12)
            .frame(height:60)
            .background(.red)
            .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
            Spacer()
        }
        .background(Image("Taara_1")
                        .resizable()
                        .aspectRatio( contentMode: .fill)
        ).edgesIgnoringSafeArea(.all
        )
        
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            LoginView().previewDevice("iPhone X")
            LoginView().previewDevice("iPhone 8")
            LoginView().previewDevice("iPhone 11 Pro Max")
        }
        
    }
}

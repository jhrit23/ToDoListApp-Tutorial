//
//  RegisterView.swift
//  ToDoListApp
//
//  Created by Jonathan Hesler on 12/23/24.
//

import SwiftUI

struct RegisterView: View {
    
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        HeaderView(title: "Register", subtitle: "Start organizing", angle: -15, backgroundColor: .orange)
        Form {
            TextField("Name", text: $viewModel.name)
                .autocorrectionDisabled()
                .autocapitalization(.none)
            TextField("Email Address", text: $viewModel.email)
                .autocorrectionDisabled()
                .autocapitalization(.none)
            SecureField("Password", text: $viewModel.password)
            TLButton(title: "Register", backgroundColor: .blue, action: {
                viewModel.register()
            })
        }
        .textFieldStyle(DefaultTextFieldStyle())
        Spacer()
    }
}

#Preview {
    RegisterView()
}

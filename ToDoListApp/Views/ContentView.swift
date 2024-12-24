//
//  ContentView.swift
//  ToDoListApp
//
//  Created by Jonathan Hesler on 12/23/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ContentViewViewModel()
    
    var body: some View {
        VStack {
            if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
                TabView {
                    ToDoListView(userId: viewModel.currentUserId)
                        .tabItem {
                            Label("Home", systemImage: "house")
                    }
                    ProfileView()
                        .tabItem {
                            Label("Profile", systemImage: "person.circle")
                        }
                }
            }else{
                LoginView()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

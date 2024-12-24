//
//  ProfileViewViewModel.swift
//  ToDoListApp
//
//  Created by Jonathan Hesler on 12/23/24.
//

import FirebaseAuth
import FirebaseFirestore
import Foundation

class ProfileViewViewModel: ObservableObject {
    
    @Published var user: User? = nil
    
    func fetchUser() {
        guard let userId = Auth.auth().currentUser?.uid else { return }
        
        let db = Firestore.firestore()
        db.collection("users").document(userId).getDocument() { [weak self] snapshot, error in
            guard let data = snapshot?.data(), error  == nil else {
                return
            }
            
            DispatchQueue.main.async {
                self?.user = User(id: data["id"] as? String ?? "", name: data["name"] as? String ?? "", email: data["email"] as? String ?? "", joined: data["joined"] as? TimeInterval ?? 0)
            }
            
        }
    }
    
    init() {}
    
    func logout() {
        do {
            try Auth.auth().signOut()
        }catch{
            print(error)
        }
    }
}

//
//  ToDoListItemViewViewModel.swift
//  ToDoListApp
//
//  Created by Jonathan Hesler on 12/23/24.
//

import FirebaseAuth
import FirebaseFirestore
import Foundation

class ToDoListItemViewViewModel: ObservableObject {
    
    init () {}
    
    func toggle(item: ToDoListItem) {
        var newItem = item
        newItem.setDone(!item.isDone)
        
        guard let uId = Auth.auth().currentUser?.uid else { return }
        
        let db = Firestore.firestore()
        
        db.collection("users").document(uId).collection("todos").document(newItem.id).setData(newItem.asDictionary())
    }
}

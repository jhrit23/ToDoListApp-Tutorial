//
//  TLButton.swift
//  ToDoListApp
//
//  Created by Jonathan Hesler on 12/23/24.
//

import SwiftUI

struct TLButton: View {
    
    let title: String
    let backgroundColor: Color
    let action: () -> Void
    
    var body: some View {
        Button(action: {
            action()
        }, label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(backgroundColor)
                Text(title)
                    .foregroundColor(.white)
                    .bold()
            }
        })
        .padding()
    }
}

#Preview {
    TLButton(title: "Title", backgroundColor: .pink) {
        //Action
    }
}

//
//  Tutorial3.swift
//  CupcakeCorner
//
//  Created by kwon eunji on 12/11/23.
//

import SwiftUI

struct Tutorial3: View {
    @State private var userName = ""
    @State private var email = ""
    
    var disableForm: Bool {
        userName.count < 5 || email.count < 5
    }
    
    var body: some View {
        Form {
            Section {
                TextField("User Name", text: $userName)
                TextField("Email", text: $email)
            }
            
            Section {
                Button("Create Account") {
                    print("Create Account")
                }
            }
            .disabled(disableForm)
        }
    }
}

#Preview {
    Tutorial3()
}

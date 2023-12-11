//
//  Tutorial4.swift
//  CupcakeCorner
//
//  Created by kwon eunji on 12/11/23.
//

import SwiftUI

struct Tutorial4: View {
    
    @Observable
    class User: Codable {
        enum CodingKeys: String, CodingKey {
               case _name = "name"
           }
        
        var name = "Taylor"
    }
    
    
    
    var body: some View {
        Button("Encode Taylor", action: encodeTaylor)
        
    }
    
    func encodeTaylor() {
           let data = try! JSONEncoder().encode(User())
           let str = String(decoding: data, as: UTF8.self)
           print(str)
       }
}

#Preview {
    Tutorial4()
}

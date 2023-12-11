//
//  Tutorial2.swift
//  CupcakeCorner
//
//  Created by kwon eunji on 12/11/23.
//

import SwiftUI

struct Tutorial2: View {
    var body: some View {
        AsyncImage(url: URL(string:"https://hws.dev/img/logo.png")) { image in
            image
                .resizable()
                .scaledToFit()
            
        } placeholder: {
            Color.red
        }
        .frame(width: 300, height: 300)
    }
}

#Preview {
    Tutorial2()
}

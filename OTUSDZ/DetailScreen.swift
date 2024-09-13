//
//  DetailScreen.swift
//  APPSUIDZ
//
//  Created by Вячеслав Вовк on 31.08.2024.
//

import SwiftUI

struct DetailScreen: View {
    var title: String
    var body: some View {
        VStack {
            Text("DetailScreen \(title)")
        }
        .navigationTitle(title)
    }
        
}

#Preview {
    DetailScreen(title: "123")
}

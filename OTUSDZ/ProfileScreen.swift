//
//  HomeScreen.swift
//  APPSUIDZ
//
//  Created by Вячеслав Вовк on 31.08.2024.
//

import SwiftUI

struct ProfileScreen: View {
    @EnvironmentObject var viewModel: ViewModel
    @State var showModal: Bool = false
    var body: some View {
        
        Button {
            showModal = true
        } label: {
            Text("Не нажимать!!!")
        }
        .sheet(isPresented: $showModal) {
            DontTouchScreen(showModal: $showModal)
        }
    }
}

#Preview {
    ProfileScreen()
}

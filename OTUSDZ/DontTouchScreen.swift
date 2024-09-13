//
//  DontTouchScreen.swift
//  APPSUIDZ
//
//  Created by Вячеслав Вовк on 31.08.2024.
//

import SwiftUI

struct DontTouchScreen: View {
    @Binding var showModal: Bool
    var body: some View {
        Button("Закрой!!!") { self.showModal = false }
            .navigationTitle("Зачем нажал")
    }
}


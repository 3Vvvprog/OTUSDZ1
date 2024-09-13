//
//  HomeScreen.swift
//  APPSUIDZ
//
//  Created by Вячеслав Вовк on 31.08.2024.
//

import SwiftUI

struct ListScreen: View {
    @EnvironmentObject var viewModel: ViewModel
    @State var showCell: Bool = false
    var body: some View {
        NavigationStack {
            List {
                HStack {
                    Text("1")
                    Spacer()
                }
                .background(Color.white)
                .onTapGesture {
                    viewModel.selectedCell = 1
                    viewModel.showCell = true
                }
                HStack {
                    Text("2")
                    Spacer()
                }
                .background(Color.white)
                .onTapGesture {
                    viewModel.selectedCell = 2
                    viewModel.showCell = true
                }
                HStack {
                    Text("3")
                    Spacer()
                }
                .background(Color.white)
                .onTapGesture {
                    viewModel.selectedCell = 3
                    viewModel.showCell = true
                }
            }
            .navigationDestination(isPresented: $viewModel.showCell) {
                DetailScreen(title: viewModel.selectedCell.description)
            }
        }
        
    }
}

#Preview {
    ListScreen()
        .environmentObject(ViewModel())
}

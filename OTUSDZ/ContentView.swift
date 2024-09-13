//
//  ContentView.swift
//  APPSUIDZ
//
//  Created by Вячеслав Вовк on 31.08.2024.
//

final class ViewModel: ObservableObject {
    @Published var tabSelection: TabScreen = .home
    @Published var selectedCell = 1
    @Published var showCell: Bool = false
}

enum TabScreen {
    case home, list, profile
}

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = ViewModel()
    var body: some View {
        TabView(selection: $viewModel.tabSelection) {
            HomeScreen()
                .environmentObject(viewModel)
                .tag(TabScreen.home)
                .tabItem {
                    Label("Home", systemImage: "house")
                }
                
            
            ListScreen()
                .environmentObject(viewModel)
                .tag(TabScreen.list)
                .tabItem {
                    Label("List", systemImage: "list.clipboard")
                }
            
            ProfileScreen()
                .environmentObject(viewModel)
                .tag(TabScreen.profile)
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
        }
    }
}

#Preview {
    ContentView()
}

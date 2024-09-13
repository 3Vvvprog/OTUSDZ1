//
//  HomeScreen.swift
//  APPSUIDZ
//
//  Created by Вячеслав Вовк on 31.08.2024.
//

import SwiftUI

struct RepresentedMyView: UIViewRepresentable {
    typealias UIView = MyView
    
    func makeUIView(context: Context) -> MyView {
        let view = UIView()
        return view
    }
        
    func updateUIView(_ uiView: MyView, context: Context) {
        // Updates the state of the specified view with new information from SwiftUI.
    }

}

struct HomeScreen: View {
    @EnvironmentObject var viewModel: ViewModel
    var body: some View {
        Button {
            viewModel.tabSelection = .list
            viewModel.selectedCell = 2
            viewModel.showCell = true
        }label: {
            RepresentedMyView()
                .frame(width: 300, height: 70)
        }
    }
}
        
class MyView: UIView {
    // 1
    private var label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Открыть список"
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 25, weight: .bold)
        return label
    }()
    
    init() {
        super.init(frame: .zero)
        // 2
        backgroundColor = .systemPink
        layer.cornerRadius = 10
        // 3
        addSubview(label)
        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            label.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            label.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            label.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20),
        ])
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
        

#Preview {
    HomeScreen()
}



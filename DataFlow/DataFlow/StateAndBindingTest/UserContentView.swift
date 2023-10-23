//
//  UserContentView.swift
//  DataFlow
//
//  Created by framiOS on 2023/10/23.
//

import SwiftUI

struct UserContentView: View {
    var body: some View {
        UserCardView()
        NameInputView(text: .constant("tester1"))
        AgeControlView()
        ColorPalletView()
    }
}

struct NameInputView: View {
    @Binding var text: String
    var body: some View {
        HStack {
            TextField("이름 변경", text: $text)
            Button("이름 변경") { }
                .buttonStyle(.borderedProminent)
        }
        .padding(.horizontal, 20)
    }
}

struct AgeControlView: View {
    let count: Int = 0
    
    var body: some View {
        HStack {
            Button("-") {
//                count -= 1
            }
            .buttonStyle(.bordered)
            
            Text("\(count)")
                .frame(width: 100)
            
            Button("+") {
//                count += 1
            }
            .buttonStyle(.bordered)
            
        }
    }
}

struct ColorPalletView: View {
    let colors: [Color] = [
        .red, .orange, .yellow, .green, .blue, .purple, .pink, .brown, .white, .black
    ]
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 20) {
                ForEach(colors, id: \.self) { color in
                    Circle()
                        .stroke(.black, lineWidth: 2.0)
                        .fill(color)
                        .frame(width: 30)
                }
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 10)
        }
    }
}

#Preview {
    UserContentView()
}

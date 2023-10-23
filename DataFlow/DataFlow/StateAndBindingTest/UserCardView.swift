//
//  UserCardView.swift
//  DataFlow
//
//  Created by framiOS on 2023/10/23.
//

import SwiftUI

struct UserCardView: View {
    let name: String = "tester1"
    let age: Int = 0
    let favoritColor: Color = .gray
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Text("이름 : ")
                    .font(.headline)
                Text(name)
            } //: HStack
            
            HStack {
                Text("나이 : ")
                    .font(.headline)
                Text("\(age)")
            } //: HStack
            
            HStack {
                Text("색상 : ")
                    .font(.headline)
                Circle()
                    .stroke(.black, lineWidth: 2.0)
                    .fill(favoritColor)
                    .frame(width: 20)
            }
        }
        .padding(.horizontal, 30)
        .padding(.vertical, 20)
        .overlay(
            RoundedRectangle(cornerRadius: 5.0)
                .stroke(lineWidth: 2)
        )
    }
}

#Preview {
    UserCardView()
}

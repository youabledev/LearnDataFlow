//
//  ContentView.swift
//  Starter
//
//  Created by zumin you on 2023/11/06.
//

import SwiftUI

import SwiftUI

struct ContentView: View {
    var viewModel = ContentViewModel()
    var isSheetShow = false
    var selectedUser: User = User()
    
    var body: some View {
        NavigationStack {
            List(viewModel.user.indices, id: \.self) { index in
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


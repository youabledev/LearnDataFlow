//
//  RowView.swift
//  Starter
//
//  Created by zumin you on 2023/11/06.
//

import SwiftUI

struct RowView: View {
    let user: User
    
    var body: some View {
        HStack {
            
        }
        .padding(.horizontal, 10)
        .frame(maxWidth: .infinity)
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(user: User(id: 0, firstName: "Terry", lastName: "Medhurst", maidenName: "Smitham", age: 50, email: "atuny0@sohu.com", phone: "+63 791 675 8914", username: "atuny0", password: "9uQFF1Lh", birthDate: "2000-12-25", image: "https://robohash.org/hicveldicta.png", bloodGroup: "A−", height: 189, weight: 75.4))
    }
}

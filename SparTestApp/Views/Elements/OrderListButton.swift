//
//  OrderListButton.swift
//  SparTestApp
//
//  Created by Sergei Runov on 05.08.2024.
//

import SwiftUI

struct OrderListButton: View {
    
    // MARK: - Properites
    
    let action: () -> Void
    
    // MARK: - Body
    
    var body: some View {
        Button {
            action()
        } label: {
            Image(.orderListIcon)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 14, height: 14)
                .padding(8)
                .foregroundStyle(.black)
        }

    }
}

#Preview {
    OrderListButton {
        
    }
}

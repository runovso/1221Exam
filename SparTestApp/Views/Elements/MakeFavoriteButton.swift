//
//  MakeFavoriteButton.swift
//  SparTestApp
//
//  Created by Sergei Runov on 05.08.2024.
//

import SwiftUI

struct MakeFavoriteButton: View {
    
    // MARK: - Bindings
    
    let isFavourite: Bool
    
    // MARK: - Properites
    
    let action: () -> Void
    
    // MARK: - Body
    
    var body: some View {
        Button {
            action()
        } label: {
            Image(isFavourite ? .isFavoritedIcon : .isNotFavoritedIcon)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 14, height: 14)
                .padding(8)
                .tint(isFavourite ? .sparGreen : .black)
        }
    }
}

#Preview {
    MakeFavoriteButton(isFavourite: true) {
        
    }
}

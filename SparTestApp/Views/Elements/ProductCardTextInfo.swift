//
//  ProductCardTextInfo.swift
//  SparTestApp
//
//  Created by Sergei Runov on 06.08.2024.
//

import SwiftUI

struct ProductCardTextInfo: View {
    
    // MARK: - Properties
    
    let title: String
    let country: Country?
    
    // MARK: - Initialization
    
    init(_ title: String, country: Country?) {
        self.title = title
        self.country = country
    }
    
    // MARK: - Body
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(title)
                .lineLimit(2)
                .font(.system(size: 12))
                .foregroundStyle(.productCardTitleLabel)
                .frame(maxWidth: .infinity, alignment: .leading)
            if let country {
                Text(country.rawValue + " " + country.flag)
                    .font(.system(size: 12))
                    .foregroundStyle(.productCardCountryLabel)
            }
        }
        .padding(8)
    }
}

#Preview {
    ProductCardTextInfo("Title", country: .ecuador)
}

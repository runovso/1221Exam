//
//  ContentView.swift
//  SparTestApp
//
//  Created by Sergei Runov on 05.08.2024.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - State properties
    
    @State private var layoutType: LayoutType = .grid
    
    // MARK: - Observation
    
    @StateObject private var vm: ContentViewModel
    
    // MARK: - Initialization
    
    init() {
        self._vm = StateObject(wrappedValue: ContentViewModel())
    }
    
    // MARK: - Enumerations
    
    enum LayoutType {
        case grid
        case table
    }
    
    var body: some View {
        NavigationStack {
            ScrollView {
                if vm.products.isEmpty {
                    ProgressView()
                        .frame(width: 114, height: 114)
                } else {
                    switch layoutType {
                    case .grid:
                            let columns: [GridItem] = [
                                GridItem(.flexible(), spacing: 5),
                                GridItem(.flexible())
                            ]
                            LazyVGrid (columns: columns) {
                                ForEach(vm.products) { product in
                                ProductCardGridLayoutCell(product)
                            }
                        }
                        .padding()
                    case .table:
                        ForEach(vm.products) {
                            ProductCardTableLayoutRow($0)
                            Divider()
                        }
                    }
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    changeLayoutButton
                }
            }
        }
    }
    
    // MARK: - Subviews
    
    @ViewBuilder private var changeLayoutButton: some View {
        Button {
            if layoutType == .grid {
                layoutType = .table
            } else {
                layoutType = .grid
            }
        } label: {
            Image(layoutType == .grid ? .gridLayoutIcon : .tableLayoutIcon)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 16, height: 16)
                .foregroundStyle(.sparGreen)
                .padding(12)
                .background(.layoutIconBackground)
                .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
        }
    }
}

#Preview {
    ContentView()
}

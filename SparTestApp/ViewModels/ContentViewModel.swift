//
//  ContentViewModel.swift
//  SparTestApp
//
//  Created by Sergei Runov on 06.08.2024.
//

import Foundation

@MainActor
final class ContentViewModel: ObservableObject {
    
    // MARK: - Published properties
    
    @Published private(set) var products: [Product] = []
    
    // MARK: - Private properties
    
    private let service: ProductServiceType
    
    // MARK: - Initialization
    
    init() {
        self.service = MockProductService()
        getProducts()
    }

    // MARK: - Private methods
    
    private func getProducts() {
        Task {
            self.products = try await service.get()
        }
    }
}

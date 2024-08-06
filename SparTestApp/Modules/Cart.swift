//
//  Cart.swift
//  SparTestApp
//
//  Created by Sergei Runov on 05.08.2024.
//

import Foundation

@MainActor
final class Cart: ObservableObject {
    
    // MARK: - Singleton
    
    static let shared = Cart()
    private init() {}
    
    // MARK: - Properties
    
    var positions: [Position] = []

    // MARK: - Methods
    
    func incrementAmountForPosition(_ position: Position) {
        guard let positionFromArray = positions.first(where: { $0 == position }) else {
            addPosition(position)
            return
        }
        positionFromArray.increment()
    }
    
    func decrementAmountForPosition(_ position: Position) {
        guard let positionFromArray = positions.first(where: { $0 == position }) else { return }
        guard positionFromArray.amount > positionFromArray.minimalCountingStep else {
            removePosition(position)
            return
        }
        positionFromArray.decrement()
    }
    
    func getAmountForPosition(withId productId: String) -> Decimal {
        positions.first(where: { $0.productId == productId})?.amount ?? 0
    }

    // MARK: - Private methods
    
    private func addPosition(_ position: Position) {
        guard !positions.contains(position) else { return }
        positions.append(position)
    }


    private func removePosition(_ position: Position) {
        guard positions.contains(position), let positionIndex = positions.firstIndex(where: { $0 == position }) else { return }
        positions.remove(at: positionIndex)
    }
}


//
//  Decimal+splitByPoint.swift
//  SparTestApp
//
//  Created by Sergei Runov on 06.08.2024.
//

import Foundation

extension Decimal {
    func splitByPoint() -> (integer: String, fraction: String?) {
        let decimalString = "\(self)"
        let components = decimalString.split(separator: ".")
        let integer = String(components[0])
        var fraction = components.count > 1 ? String(components[1]) : nil
        if fraction?.count == 1 {
            fraction = fraction! + "0"
        }
        return (integer, fraction)
    }
}

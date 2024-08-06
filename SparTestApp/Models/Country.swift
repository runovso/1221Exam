//
//  Country.swift
//  SparTestApp
//
//  Created by Sergei Runov on 05.08.2024.
//

import Foundation

enum Country: String {
    
    // MARK: - Cases
    
    case france = "Франция"
    case russia = "Россия"
    case germany = "Германия"
    case ecuador = "Эквадор"
    
    // MARK: - Computed properties
    
    var flag: String {
        switch self {
        case .france: "🇫🇷"
        case .russia: "🇷🇺"
        case .germany: "🇩🇪"
        case .ecuador: "🇪🇨"
        }
    }
}

//
//  ProductService.swift
//  SparTestApp
//
//  Created by Sergei Runov on 06.08.2024.
//

import Foundation

protocol ProductServiceType {
    func get() async throws -> [Product]
}

final class MockProductService: ProductServiceType {
    func get() async throws -> [Product] {
        [
            .init(id: "100528881",
                  name: "Шашлык Свиной из Карбонада По-Московски в Специях",
                  imageName: "100528881",
                  countryOfOrigin: .russia,
                  isFavorite: false,
                  rating: 4.1,
                  reviews: Array(repeating: ProductReview(), count: 60),
                  promoLabel: .priceHit,
                  saleLabel: 27,
                  basePricePerKilo: 479.9,
                  salePricePerKilo: 349.9),
            .init(id: "100750714",
                  name: "Голень Куриная в Ореховом Маринаде",
                  imageName: "100750714",
                  countryOfOrigin: .russia,
                  isFavorite: false,
                  rating: 4.3,
                  reviews: Array(repeating: ProductReview(), count: 29),
                  promoLabel: nil,
                  saleLabel: nil,
                  basePricePerKilo: 519.9,
                  salePricePerKilo: nil),
            .sampleProductInPieces,
            .init(id: "100648007",
                  name: "Шашлык Свиной из Шеи Деликатесный",
                  imageName: "100648007",
                  countryOfOrigin: .russia,
                  isFavorite: false,
                  rating: 1.8,
                  reviews: Array(repeating: ProductReview(), count: 63),
                  promoLabel: .priceByCard,
                  saleLabel: 15,
                  basePricePerKilo: 649.9,
                  salePricePerKilo: 549.9),
            .init(id: "100874389",
                  name: "Шашлык Свиной из Карбонада по-Кавказски",
                  imageName: "100874389",
                  countryOfOrigin: .russia,
                  isFavorite: false,
                  rating: 3.1,
                  reviews: Array(repeating: ProductReview(), count: 17),
                  promoLabel: nil,
                  saleLabel: nil,
                  basePricePerKilo: 469.9,
                  salePricePerKilo: nil),
            .init(id: "100153371",
                  name: "Мандарины",
                  imageName: "100153371",
                  countryOfOrigin: .ecuador,
                  isFavorite: true,
                  rating: 4.3,
                  reviews: Array(repeating: ProductReview(), count: 426),
                  promoLabel: .priceHit,
                  saleLabel: 14,
                  basePricePerKilo: 279.9,
                  salePricePerKilo: 239.9),
            .init(id: "101090421",
                  name: "Масло Подсолнечное Рафинированное Слобода 800мл",
                  imageName: "101090421",
                  countryOfOrigin: .russia,
                  isFavorite: false,
                  rating: 3.5,
                  reviews: Array(repeating: ProductReview(), count: 9),
                  promoLabel: nil,
                  saleLabel: nil,
                  unitWeightInGrams: 800,
                  basePricePerUnit: 118.9,
                  salePricePerUnit: nil),
            .init(id: "101302711",
                  name: "Напиток Виноградосодержащий Глинтвейн Сладкий 10% 1л",
                  imageName: "101302711",
                  countryOfOrigin: .germany,
                  isFavorite: false,
                  rating: 5.0,
                  reviews: nil,
                  promoLabel: nil,
                  saleLabel: nil,
                  unitWeightInGrams: 1000,
                  basePricePerUnit: 499.9,
                  salePricePerUnit: nil),
            .sampleProductInGrams
        ]
    }
}

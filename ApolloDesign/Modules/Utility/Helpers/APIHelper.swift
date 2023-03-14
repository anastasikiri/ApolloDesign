//
//  APIHelper.swift
//  InstagramPage
//
//  Created by Anastasia Bilous on 2023-02-16.
//

import Foundation

protocol APIHelperProtocol {
    func getStoreCategoryData() -> [StoreCategoryModel]
}

class APIHelper: APIHelperProtocol {
    
    func getStoreCategoryData() -> [StoreCategoryModel] {
        let mockData: [StoreCategoryModel] = [
            StoreCategoryModel(nameCategory: "Apollo Care & Protect",
                               descriptionCategory: "Protect your new scooter",
                               items: getCareProtectItems()),
            StoreCategoryModel(nameCategory: "Accessories",
                               descriptionCategory: "Buy new great stuff for your scooter",
                               items: getAccessoriesItems()),
            StoreCategoryModel(nameCategory: "Upgrades",
                               descriptionCategory: "Hardware & Software Updates",
                               items: getUpgradesItems())
        ]
        return mockData
    }
    
    private func getCareProtectItems() -> [StoreItemModel] {
        return [StoreItemModel(nameItem: "Apollo Care + Theft and Loss",
                               descriptionItem: "$129 USD or 6.99/mo.",
                               priceItem: "",
                               logoImageItem: "Frame 1"),
                StoreItemModel(nameItem: "Apollo Care",
                               descriptionItem: "$129 USD or 6.99/mo.",
                               priceItem: "",
                               logoImageItem: "Frame 2")]
    }
    
    private func getAccessoriesItems() -> [StoreItemModel] {
        return [StoreItemModel(nameItem: "Apollo Bag",
                               descriptionItem: "Some interesting description here",
                               priceItem: "$19.99 USD",
                               logoImageItem: "Frame 3")]
    }
    
    private func getUpgradesItems() -> [StoreItemModel] {
        return [StoreItemModel(nameItem: "Phantom V3 Kit",
                               descriptionItem: "At magnum periculum adiit in oculis \nquidem exercitus quid ex eo delectu rerum.",
                               priceItem: "",
                               logoImageItem: "Frame 4")]
    }
}

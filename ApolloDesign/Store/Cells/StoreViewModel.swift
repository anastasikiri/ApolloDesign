//
//  StoreViewModel.swift
//  ApolloDesign
//
//  Created by Anastasia Bilous on 2023-03-07.
//

import Foundation

protocol StoreViewModelProtocol {
    func loadDataStoreCategory() -> [StoreCategoryModel]
}

class StoreViewModel: StoreViewModelProtocol {
    private let api: APIHelperProtocol
    
    init(api: APIHelperProtocol) {
        self.api = api
    }
    
    func loadDataStoreCategory() -> [StoreCategoryModel] {
        return api.getStoreCategoryData()
    }
}

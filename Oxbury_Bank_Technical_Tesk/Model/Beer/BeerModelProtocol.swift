//
//  BeerModelProtocol.swift
//  Oxbury_Bank_Technical_Tesk
//
//  Created by Raivis on 05/01/2023.
//

import Foundation

enum BeerModelError: Error {
    case failedToFetchBeers
    case failedToSaveBeersInCoreData
}

protocol BeerModelProtocol {
    
    func getBeers(
        completion: @escaping (Result<[Beer], BeerModelError>) -> Void
    )
    
//    func saveBeersInCoreData(
//        beers: [Beer],
//        completion: @escaping (Result<Void, BeerModelError>) -> Void
//    )
    
}

//
//  BeerModelProtocol.swift
//  Oxbury_Bank_Technical_Tesk
//
//  Created by Raivis on 05/01/2023.
//

import Foundation

enum BeerModelError: Error {
    case failedToFetchBeers
}

protocol BeerModelProtocol {
    
    func getBeers(
        completion: @escaping (Result<[Beer], BeerModelError>) -> Void
    )
    
}

//
//  BeerViewCoordinator.swift
//  Oxbury_Bank_Technical_Tesk
//
//  Created by Raivis on 06/01/2023.
//

import Foundation

struct BeerViewCoordinator: BeerViewCoordinatorProtocol {
    
    private let model = BeerModel()
    
    func instantiateBeersViewController(
        transition:(BeersViewController) -> Void
    ) {
        let beersViewController = BeersViewController(
            model: model
        )
        
        transition(beersViewController)
    }
    
}

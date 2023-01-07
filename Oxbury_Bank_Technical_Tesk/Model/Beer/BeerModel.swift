//
//  BeerModel.swift
//  Oxbury_Bank_Technical_Tesk
//
//  Created by Raivis on 05/01/2023.
//

import Foundation
import Alamofire
import CoreData

struct BeerModel: BeerModelProtocol {
    
    func getBeers(completion: @escaping (Result<[Beer], BeerModelError>) -> Void) {
        
        AF.request("\(URLs.baseURL)/beers").responseDecodable(of: [Beer].self) { response in
            switch response.result {
            case .success(let beers):
                completion(.success(beers))
            case .failure:
                //MARK: Need to create a switch to handle all kind of errors maybe...
                completion(.failure(.failedToFetchBeers))
            }
        }
    }
    
//    func saveBeersInCoreData(beers: [Beer],  completion: @escaping (Result<Void, BeerModelError>) -> Void) {
//        let managedContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
//
//        for beer in beers {
//            var newBeer = NSEntityDescription.insertNewObject(forEntityName: "BeerEntity", into: managedContext) as! Beer
//
//            newBeer.id = Int(beer.id)
//            newBeer.name = beer.name
//            newBeer.tagline = beer.tagline
//            newBeer.firstBrewed = beer.firstBrewed
//            newBeer.welcomeDescription = beer.welcomeDescription
//            newBeer.imageURL = beer.imageURL
//            newBeer.abv = beer.abv
//            newBeer.ibu = beer.ibu
//            newBeer.targetFg = beer.targetFg
//            newBeer.targetOg = beer.targetOg
//            newBeer.ebc = beer.ebc
//            newBeer.srm = beer.srm
//            newBeer.ph = beer.ph
//            newBeer.attenuationLevel = beer.attenuationLevel
//            newBeer.volume = beer.volume
//            newBeer.boilVolume = beer.boilVolume
//            newBeer.method = beer.method
//            newBeer.ingredients = beer.ingredients
//            newBeer.foodPairing = beer.foodPairing
//            newBeer.brewersTips = beer.brewersTips
//            newBeer.contributedBy = beer.contributedBy
//        }
//
//        do {
//            try managedContext.save()
//            completion(.success(()))
//        } catch {
//            completion(.failure(.failedToSaveBeersInCoreData))
//        }
//    }
}

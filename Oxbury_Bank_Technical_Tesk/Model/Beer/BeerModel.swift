//
//  BeerModel.swift
//  Oxbury_Bank_Technical_Tesk
//
//  Created by Raivis on 05/01/2023.
//

import Foundation
import Alamofire

struct BeerModel: BeerModelProtocol {
    
    func getBeers(completion: @escaping (Result<[Beer], BeerModelError>) -> Void) {
        
        AF.request("https://api.punkapi.com/v2/beers").responseDecodable(of: [Beer].self) { response in
                    switch response.result {
                    case .success(let beers):
                        completion(.success(beers))
                    case .failure:
                        //MARK: Need to create a switch to handle all kind of errors maybe...
                        completion(.failure(.failedToFetchBeers))
                    }
                }
            }
    }

//
//  BeerEntity.swift
//  Oxbury_Bank_Technical_Tesk
//
//  Created by Raivis on 06/01/2023.
//

import Foundation
import CoreData

class BeerEntityModel: NSManagedObject {
    @NSManaged var id: Int64
    @NSManaged var name: String
    @NSManaged var tagline: String
    @NSManaged var firstBrewed: String
    @NSManaged var welcomeDescription: String
    @NSManaged var imageUrl: String
    @NSManaged var abv: Double
    @NSManaged var ibu: Double
    @NSManaged var targetFg: Double
    @NSManaged var targetOg: Double
    @NSManaged var ebc: Double
    @NSManaged var srm: Double
    @NSManaged var ph: Double
    @NSManaged var attenuationLevel: Double
    @NSManaged var foodPairing: [String]
    @NSManaged var brewersTips: String
    @NSManaged var contributedBy: String
}

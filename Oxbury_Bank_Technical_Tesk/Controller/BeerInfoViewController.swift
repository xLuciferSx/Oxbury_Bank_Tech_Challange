//
//  BeerInfoViewController.swift
//  Oxbury_Bank_Technical_Tesk
//
//  Created by Raivis on 06/01/2023.
//

import UIKit

class BeerInfoViewController: UIViewController {
    
    @IBOutlet private weak var navBarTitle: UILabel!
    @IBOutlet private weak var beerView: UIView!
    @IBOutlet private weak var beerNameLabel: UILabel!
    @IBOutlet private weak var strengthLabel: UILabel!
    @IBOutlet private weak var descriptionLabel: UILabel!
    @IBOutlet private weak var foodPairingNotesLabel: UILabel!
    @IBOutlet private weak var strengthImage: UIImageView!
    
    var beer: Beer
    
    init(beer: Beer) {
        self.beer = beer
        super.init(nibName: nil, bundle: nil)
    }
    
    @available(*, unavailable, message: "It should not be called.")
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func setupView() {
        navBarTitle.text = beer.name
        beerView.layer.cornerRadius = 12
        beerNameLabel.text = beer.name
        strengthLabel.text = "\(beer.abv ?? 0)%"
        strengthImage.isHidden = beer.abv ?? 0 < 5
        descriptionLabel.text = beer.welcomeDescription
        foodPairingNotesLabel.text = beer.foodPairing?.joined(separator: ", \n")
    }
    
    
    @IBAction func backButtonTapped(_ sender: Any) {
        self.dismiss(animated: true)

    }
}

//
//  BeerInfoViewController.swift
//  Oxbury_Bank_Technical_Tesk
//
//  Created by Raivis on 06/01/2023.
//

import UIKit

class BeerInfoViewController: UIViewController {
    
    @IBOutlet private weak var navBarTitle: UILabel!
    
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
        
        navBarTitle.text = beer.name
    }
    
    
    @IBAction func backButtonTapped(_ sender: Any) {
        self.dismiss(animated: true)

    }
}

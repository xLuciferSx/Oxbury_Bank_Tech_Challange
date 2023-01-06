//
//  BeersViewController.swift
//  Oxbury_Bank_Technical_Tesk
//
//  Created by Raivis on 06/01/2023.
//

import UIKit

class BeersViewController: UIViewController {
    
    @IBOutlet private  weak var tableView: UITableView!
    
    private let model: BeerModelProtocol
    
    var beerArray: [Beer] = []
    
    init(model: BeerModelProtocol) {
        self.model = model
        super.init(nibName: nil, bundle: nil)
    }
    
    @available(*, unavailable, message: "It should not be called.")
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        getData()
        setupView()
    }
    
    func setupView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.registerNibArray(withNames: [""])
    }
    
    func getData() {
        
        model.getBeers { result in
            switch result {
            case .success(let beer):
                self.beerArray = beer
            case .failure(let failure):
                print("Failed to fetch data: \(failure)")
            }
        }
    }
    
}

extension BeersViewController: UITableViewDelegate {
    
}

extension BeersViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return beerArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
    
}

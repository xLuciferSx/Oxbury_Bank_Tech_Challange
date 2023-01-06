//
//  BeerTableViewCell.swift
//  Oxbury_Bank_Technical_Tesk
//
//  Created by Raivis on 06/01/2023.
//

import UIKit
import SDWebImage

class BeerTableViewCell: UITableViewCell {

    @IBOutlet private weak var beerImageView: UIImageView!
    @IBOutlet private weak var beerName: UILabel!
    @IBOutlet private weak var beerStrengthLabel: UILabel!
    @IBOutlet private weak var tagLine: UILabel!
    @IBOutlet private weak var strengthImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }
    
    func setupCell(beer: Beer) {
        beerImageView.sd_setImage(with: URL(string: beer.imageURL ?? ""))
        beerName.text = beer.name
        beerStrengthLabel.text = "\(beer.abv ?? 0)%"
        tagLine.text = beer.tagline
        strengthImageView.isHidden = beer.abv ?? 0 < 5
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

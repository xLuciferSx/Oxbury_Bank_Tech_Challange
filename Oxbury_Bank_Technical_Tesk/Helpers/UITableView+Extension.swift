//
//  UITableView+Extension.swift
//  Oxbury_Bank_Technical_Tesk
//
//  Created by Raivis on 06/01/2023.
//

import UIKit

extension UITableView {
    
    func registerNibForIdentifier(identifier: String) {
         register(UINib(nibName: identifier, bundle: nil), forCellReuseIdentifier: identifier )
    }
    
    public func registerNibArray(withNames names: [String]) {
            for name in names {
                let nib = UINib(nibName: name, bundle: nil)
                self.register(nib, forCellReuseIdentifier: name)
            }
        }
    
}

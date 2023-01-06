//
//  TabBarController.swift
//  Oxbury_Bank_Technical_Tesk
//
//  Created by Raivis on 05/01/2023.
//
import UIKit


class TabBarController: UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
        createTabBar()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBar.tintColor = .black
        self.tabBar.unselectedItemTintColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 0.6)
        self.tabBar.isTranslucent = false
        self.tabBar.backgroundColor = UIColor(red: 57/255, green: 83/255, blue: 109/255, alpha: 1)
    }
    
    func createTabBar() {
        lazy var beer: BeersViewController = {
            var vc: BeersViewController!
            BeerViewCoordinator().instantiateBeersViewController { beersViewController in
                vc = beersViewController
            }
            return vc
        }()
        
        let beerItem = self.addTabItem(forViewController: beer, imageName: "beer", selectedImageName: "beer", forTitle: "Beers")
        
        let controllers = [beerItem]
        self.viewControllers = controllers
    }
    
    private func addTabItem(forViewController vc: UIViewController, imageName: String, selectedImageName: String, forTitle title: String) -> UIViewController {
        let item = vc
        let icon = UITabBarItem(title: title, image: UIImage(named: imageName), selectedImage: UIImage(named: selectedImageName))
        item.tabBarItem = icon
        return item
    }
}

//
//  TabBarViewController.swift
//  ApolloDesign
//
//  Created by Anastasia Bilous on 2023-03-11.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBar.items?.first?.badgeValue = "2"
        self.selectedIndex = 3
    }
}

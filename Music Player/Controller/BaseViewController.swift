//
//  BaseController.swift
//  Music Player
//
//  Created by Eugene Lu on 2018-05-18.
//  Copyright © 2018 Eugene Lu. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        menuBar.delegate = self
    }
    
    func setupMenuBar(iconName: String) {
        view.addSubview(menuBar)
        
        menuBar.iconSelected = iconName
        menuBar.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        menuBar.heightAnchor.constraint(equalToConstant: 55).isActive = true
        menuBar.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        menuBar.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        menuBar.widthAnchor.constraint(equalToConstant: view.frame.width).isActive = true
    }
    
    func setupViews() {
        
    }
    
    let menuBar : MenuBar = {
        let mb = MenuBar()
        mb.translatesAutoresizingMaskIntoConstraints = false
        return mb
    }()
}

//MARK: Menu bar delegates
extension BaseViewController : MenuBarDelegate {
    func menuCellPressed(for sectionName: String) {
        print("pressed")
        switch sectionName {
            case "Trending":
                let controller = TrendingController()
                let nav = UINavigationController(rootViewController: controller)
                present(nav, animated: false, completion: nil)
            case "Search":
                let controller = SearchController()
                let nav = UINavigationController(rootViewController: controller)
                present(nav, animated: false, completion: nil)
            case "Playlist":break
            case "Favourites":break
            case "More":break
            default:break
        }
    }
}

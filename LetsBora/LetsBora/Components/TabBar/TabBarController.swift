//
//  TabBarController.swift
//  LetsBora
//
//  Created by Joel Lacerda on 28/03/25.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabs()
    }
    
    /// Sets up the tabs for the bar
    private func setupTabs() {
        
        let highlights = UINavigationController(rootViewController: HomeViewController())
        let search = UINavigationController(rootViewController: SearchViewController())
        let createEvent = UINavigationController(rootViewController: CreateEventViewController())
        let myEvents = UINavigationController(rootViewController: MyEventsViewController())
        let profile = UINavigationController(rootViewController: ProfileViewController())
        
        highlights.tabBarItem = UITabBarItem(title: "Início", image: UIImage(systemName: "house"), tag: 0)
        search.tabBarItem = UITabBarItem(title: "Buscar", image: UIImage(systemName: "magnifyingglass"), tag: 1)
        createEvent.tabBarItem = UITabBarItem(title: "Criar Evento", image: UIImage(systemName: "plus.circle"), tag: 2)
        myEvents.tabBarItem = UITabBarItem(title: "Meus Eventos", image: UIImage(systemName: "heart"), tag: 3)
        profile.tabBarItem = UITabBarItem(title: "Perfil", image: UIImage(systemName: "person"), tag: 4)
        
        self.viewControllers = [highlights, search, createEvent, myEvents, profile]
        self.tabBar.backgroundColor = .white
       
    }
}

// MARK: - Preview Profile
@available(iOS 17.0,*)
#Preview(traits: .portrait, body: {
    TabBarController()
})

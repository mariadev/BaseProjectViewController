//
//  SetViewController.swift
//  BaseProjectViewController
//
//  Created by Maria on 09/02/2021.
//

import UIKit

class MainViewController: UIViewController {
    
    let mainView = MainView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupNavBar()
        setLayout()
        style()
    }
    
    fileprivate func setupNavBar() {
        navigationItem.title = "Main"
        
        let goToGetViewControllerBarButtonItem = UIBarButtonItem(title: "Detail", style: .done, target: self, action: #selector(goToGetViewControllerBarButtonItemTapped))
        navigationItem.setRightBarButton(goToGetViewControllerBarButtonItem, animated: true)
    }
    
    @objc fileprivate func goToGetViewControllerBarButtonItemTapped() {
        let controller = DetailViewController()
        navigationController?.pushViewController(controller, animated: true)
    }

}

extension MainViewController {
    
    func setLayout() {
        view.addSubview(mainView)
        mainView.edgeToSafeArea(view, constant: 20)
    }
    
    func style() {
        view.backgroundColor = .white
    }
}

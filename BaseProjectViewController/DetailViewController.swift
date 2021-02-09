//
//  GetViewController.swift
//  BaseProjectViewController
//
//  Created by Maria on 09/02/2021.
//

import UIKit

class DetailViewController: UIViewController {
    
    let detailView = DetailView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupNavBar()
        setLayout()
        style()
    }
}

extension  DetailViewController {
    
    fileprivate func setupNavBar() {
        navigationItem.title = "Detail"
    }
    
    func setLayout() {
        view.addSubview(detailView)
        detailView.edgeToSafeArea(view, constant: 20)
    }
    
    func style() {
        view.backgroundColor = .white
    }

}

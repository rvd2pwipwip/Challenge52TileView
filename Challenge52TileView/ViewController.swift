//
//  ViewController.swift
//  Challenge52TileView
//
//  Created by Herve Desrosiers on 2020-03-03.
//  Copyright © 2020 Herve Desrosiers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let padding: CGFloat = 50
    private let heightRatio: CGFloat = 0.25

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView() {
        view.addSubview(tileView)
        NSLayoutConstraint.activate([
            tileView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: padding),
            tileView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: padding),
            tileView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -padding),
            tileView.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: heightRatio)
        ])
    }

    private let tileView: TileView = {
        let view = TileView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

}


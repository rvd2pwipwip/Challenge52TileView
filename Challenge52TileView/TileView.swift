//
//  TileView.swift
//  Challenge52TileView
//
//  Created by Herve Desrosiers on 2020-03-03.
//  Copyright © 2020 Herve Desrosiers. All rights reserved.
//

import UIKit

class TileView: UIView {
    
    private let padding: CGFloat = 50
    private let smallPadding: CGFloat = 25
    private let heightRatio: CGFloat = 0.25

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupTileView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupTileView() {
        addSubview(tileView)
        addSubview(blueView)
        addSubview(redView)
        NSLayoutConstraint.activate([
            tileView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: padding),
            tileView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: padding),
            tileView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -padding),
            tileView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: heightRatio),
            blueView.topAnchor.constraint(equalTo: tileView.topAnchor, constant: smallPadding),
            blueView.leadingAnchor.constraint(equalTo: tileView.leadingAnchor, constant: smallPadding),
            blueView.bottomAnchor.constraint(equalTo: tileView.bottomAnchor, constant: -smallPadding),
            blueView.widthAnchor.constraint(equalTo: redView.widthAnchor),
            redView.topAnchor.constraint(equalTo: blueView.topAnchor),
            redView.leadingAnchor.constraint(equalTo: blueView.trailingAnchor, constant: smallPadding),
            redView.trailingAnchor.constraint(equalTo: tileView.trailingAnchor, constant: -smallPadding),
            redView.bottomAnchor.constraint(equalTo: blueView.bottomAnchor)
        ])
    }
    
    private let tileView = makeView(color: .green)
    private let blueView = makeView(color: .blue)
    private let redView = makeView(color: .red)
    
}

private extension UIView {
    static func makeView(color: UIColor) -> UIView {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = color
        return view
    }
}

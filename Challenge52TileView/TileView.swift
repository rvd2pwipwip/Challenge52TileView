//
//  TileView.swift
//  Challenge52TileView
//
//  Created by Herve Desrosiers on 2020-03-03.
//  Copyright © 2020 Herve Desrosiers. All rights reserved.
//

import UIKit

class TileView: UIView {
    
    private let padding: CGFloat = 25

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupTileView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupTileView()
    }
    
    private func setupTileView() {
        backgroundColor = .green
        addSubview(blueView)
        addSubview(redView)
        NSLayoutConstraint.activate([
            blueView.topAnchor.constraint(equalTo: topAnchor, constant: padding),
            blueView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
            blueView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -padding),
            blueView.widthAnchor.constraint(equalTo: redView.widthAnchor),
            redView.topAnchor.constraint(equalTo: blueView.topAnchor),
            redView.leadingAnchor.constraint(equalTo: blueView.trailingAnchor, constant: padding),
            redView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -padding),
            redView.bottomAnchor.constraint(equalTo: blueView.bottomAnchor)
        ])
    }
    
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

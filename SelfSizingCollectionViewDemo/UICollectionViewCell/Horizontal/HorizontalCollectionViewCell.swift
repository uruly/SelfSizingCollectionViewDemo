//
//  HorizontalCollectionViewCell.swift
//  SelfSizingCollectionViewDemo
//
//  Created by Reona Kubo on 2020/01/04.
//  Copyright © 2020 Reona Kubo. All rights reserved.
//

import UIKit

final class HorizontalCollectionViewCell: UICollectionViewCell {

    @IBOutlet private weak var textLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        activationSelfSizing()
    }

    func configure(text: String) {
        textLabel.text = text
    }

    private func activationSelfSizing() {
        // iOS12 のときに Self-sizing が有効にならない対策
        contentView.translatesAutoresizingMaskIntoConstraints = false
        let leftConstraint = contentView.leftAnchor.constraint(equalTo: leftAnchor)
        let rightConstraint = contentView.rightAnchor.constraint(equalTo: rightAnchor)
        let topConstraint = contentView.topAnchor.constraint(equalTo: topAnchor)
        let bottomConstraint = contentView.bottomAnchor.constraint(equalTo: bottomAnchor)
        NSLayoutConstraint.activate([leftConstraint, rightConstraint, topConstraint, bottomConstraint])
    }
}

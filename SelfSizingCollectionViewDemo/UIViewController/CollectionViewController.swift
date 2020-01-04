//
//  CollectionViewController.swift
//  SelfSizingCollectionViewDemo
//
//  Created by Reona Kubo on 2020/01/04.
//  Copyright © 2020 Reona Kubo. All rights reserved.
//

import UIKit

final class CollectionViewController: UIViewController {

    @IBOutlet private weak var collectionView: UICollectionView! {
        didSet {
            collectionView.delegate = self
            collectionView.dataSource = self
            collectionView.register(UINib(nibName: "SelfSizingCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: reuseIdentifier)
            if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
                layout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
                layout.invalidateLayout()
            }
        }
    }

    private let reuseIdentifier = "cell"
    private let animals: [String] = ["ねこ", "あざらし", "いぬ", "パンダ", "キリン", "マヌルネコ", "ゾウ", "ペンギン"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK: - UICollectionViewDataSource

extension CollectionViewController: UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return animals.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! SelfSizingCollectionViewCell
        cell.configure(text: animals[indexPath.row])
        return cell
    }

}

// MARK: - UICollectionViewDelegate

extension CollectionViewController: UICollectionViewDelegate {}

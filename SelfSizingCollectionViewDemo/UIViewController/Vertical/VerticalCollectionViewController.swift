//
//  VerticalCollectionViewController.swift
//  SelfSizingCollectionViewDemo
//
//  Created by Reona Kubo on 2020/01/04.
//  Copyright © 2020 Reona Kubo. All rights reserved.
//

import UIKit

final class VerticalCollectionViewController: UIViewController {

    @IBOutlet private var collectionViews: [UICollectionView]!

    private let reuseIdentifier = "cell"
    private let animals: [String] = ["cat", "kangaroo", "seal", "dog", "panda", "giraffe", "penguin", "zebra", "hippopotamus"]

    override func viewDidLoad() {
        super.viewDidLoad()
        for collectionView in collectionViews {
            collectionView.delegate = self
            collectionView.dataSource = self
            collectionView.register(UINib(nibName: "VerticalCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: reuseIdentifier)
            // iOS12ではxibでの設定だけで動くが、iOS13ではコードで設定しないと可変にならない
            if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
                layout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
                layout.invalidateLayout()
            }
        }
    }
}

// MARK: - UICollectionViewDataSource

extension VerticalCollectionViewController: UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return animals.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! VerticalCollectionViewCell
        cell.configure(text: animals[indexPath.row])
        return cell
    }

}

// MARK: - UICollectionViewDelegate

extension VerticalCollectionViewController: UICollectionViewDelegate {}

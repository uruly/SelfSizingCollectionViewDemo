//
//  HomeViewController.swift
//  SelfSizingCollectionViewDemo
//
//  Created by Reona Kubo on 2020/01/04.
//  Copyright © 2020 Reona Kubo. All rights reserved.
//

import UIKit

final class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func showHorizontalViewController(_ sender: UIButton) {
        let viewController = HorizontalCollectionViewController()
        navigationController?.pushViewController(viewController, animated: true)
    }

    @IBAction func showVerticalViewController(_ sender: UIButton) {
        let viewController = VerticalCollectionViewController()
        navigationController?.pushViewController(viewController, animated: true)
    }
}

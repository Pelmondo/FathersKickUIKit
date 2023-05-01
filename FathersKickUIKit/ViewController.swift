//
//  ViewController.swift
//  FathersKickUIKit
//
//  Created by Сергей Прокопьев on 01.05.2023.
//

import UIKit

class ViewController: UIViewController {

    private lazy var gradientView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        view.layer.cornerRadius = 10
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        view.addSubview(gradientView)
        setupLayout()
        gradientView.addBottomShadow()
    }

    override func viewDidLayoutSubviews() {

        gradientView.addGradientLayer(with: [
            UIColor.systemBlue.cgColor,
            UIColor.systemRed.cgColor
        ])
    }

    private func setupLayout() {
        NSLayoutConstraint.activate([
            gradientView.widthAnchor.constraint(equalTo: gradientView.heightAnchor),
            gradientView.heightAnchor.constraint(equalToConstant: 80),
            gradientView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
            gradientView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}

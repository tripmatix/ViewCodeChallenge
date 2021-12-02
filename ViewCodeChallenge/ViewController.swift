//
//  ViewController.swift
//  ViewCodeChallenge
//
//  Created by Romulo Oliveira Viganico on 01/12/21.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Jaber Cagao"
        label.textColor = .blue
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 35)
        label.backgroundColor = .systemGray
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.view.addSubview(self.label)
        configConstraints()
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            self.label.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.label.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            self.label.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 50),
            self.label.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -100),
            self.label.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20),
            self.label.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20)])
    }


}


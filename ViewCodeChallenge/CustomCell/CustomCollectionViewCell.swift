//
//  CustomCollectionViewCell.swift
//  ViewCodeChallenge
//
//  Created by Romulo Oliveira Viganico on 05/12/21.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "CustomCollectionViewCell"
    
    private var cardFlagImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "flag")
        view.backgroundColor = .systemPink
        return view
    }()
    
    private var cardDescriptionLabel: UILabel = {
        let view = UILabel()
        view.text = "Daycoval"
        view.backgroundColor = .systemGray
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .orange
        contentView.addSubview(cardFlagImage)
//        contentView.addSubview(cardDescriptionLabel)
        setConstraints()

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()

        cardFlagImage.frame = CGRect(x: 0,
                                     y: 50,
                                     width: 30,
                                     height: 30)

        cardDescriptionLabel.frame = CGRect(x: 0,
                                            y: -100,
                                            width: 10,
                                            height: 30)


    }
    
    func setConstraints() {
//        cardFlagImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10).isActive = true
        cardFlagImage.centerXAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.centerXAnchor, constant: 0).isActive = true
        cardFlagImage.centerYAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.centerYAnchor, constant: 0).isActive = true
//        cardFlagImage.trailingAnchor.constraint(equalTo: cardDescriptionLabel.leadingAnchor, constant: 10).isActive = true
//        cardDescriptionLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 0).isActive = true
    }
}

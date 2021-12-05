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
        contentView.addSubview(cardDescriptionLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        cardDescriptionLabel.frame = CGRect(x: 5,
                                            y: contentView.frame.size.height,
                                            width: contentView.frame.size.width,
                                            height: 50)
        
        cardFlagImage.frame = CGRect(x: 5,
                                     y: 0,
                                     width: contentView.frame.size.width,
                                     height: contentView.frame.size.height)
    }
}

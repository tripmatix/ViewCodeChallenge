//
//  ViewController.swift
//  ViewCodeChallenge
//
//  Created by Romulo Oliveira Viganico on 01/12/21.
//

import UIKit

class ViewController: UIViewController {
    
    let texto = textos()
    
    private lazy var firstLabel: UILabel = {
        let view = UILabel(frame: .zero)
        return view
    }()
    
    private lazy var secondLabel: UILabel = {
        let view = UILabel(frame: .zero)
        return view
    }()
    
    private lazy var firstImage: UIImageView = {
        let view = UIImageView(frame: .zero)
        return view
    }()
    
    private lazy var firstButton: UIButton = {
        let view = UIButton(type: .system)
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        labelConfig(labelParam: firstLabel, text: texto.texto1)
        labelConfig(labelParam: secondLabel, text: texto.texto2, font: .systemFont(ofSize: 15))
        //todo retirar ! abaixo
        imageConfig(imgParam: firstImage, image: texto.imagem!)
        buttonConfig(buttonParam: firstButton, text: texto.texto3)
        view.addSubview(firstLabel)
        view.addSubview(secondLabel)
        view.addSubview(firstImage)
        firstButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        view.addSubview(firstButton)
        setConstraints()
    }
    
    func labelConfig(labelParam: UILabel, text: String = "", font: UIFont = .boldSystemFont(ofSize: 25)){
        labelParam.text = text
        labelParam.textColor = .black
        labelParam.textAlignment = .left
        labelParam.font = font
        labelParam.numberOfLines = 0
        labelParam.adjustsFontSizeToFitWidth = false
        labelParam.lineBreakMode = .byTruncatingTail
        labelParam.layer.cornerRadius = 10
        labelParam.layer.masksToBounds = true
        labelParam.translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    func imageConfig(imgParam: UIImageView, image: UIImage){
        imgParam.image = image
        imgParam.contentMode = .scaleAspectFill
        imgParam.layer.cornerRadius = 10
        imgParam.layer.masksToBounds = true
        imgParam.backgroundColor = .systemGray
        imgParam.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func buttonConfig(buttonParam: UIButton, text: String){
        buttonParam.translatesAutoresizingMaskIntoConstraints = false
        buttonParam.backgroundColor = .orange
        buttonParam.setTitle(text, for: .normal)
        buttonParam.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        buttonParam.setTitleColor(.white, for: .normal)
        buttonParam.clipsToBounds = true
        buttonParam.layer.cornerRadius = 4
        buttonParam.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
    }
    
    func setConstraints(){

        firstLabel.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: -20).isActive = true
        firstLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
        firstLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20).isActive = true

        secondLabel.topAnchor.constraint(equalTo: self.firstLabel.bottomAnchor, constant: 10).isActive = true
        secondLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
        secondLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20).isActive = true

        firstImage.topAnchor.constraint(equalTo: self.secondLabel.bottomAnchor, constant: 30).isActive = true
        firstImage.leadingAnchor.constraint(equalTo: self.secondLabel.leadingAnchor, constant: 0).isActive = true
        firstImage.trailingAnchor.constraint(equalTo: self.secondLabel.trailingAnchor, constant: 0).isActive = true
        
        firstButton.topAnchor.constraint(equalTo: self.firstImage.bottomAnchor,constant: 30).isActive = true
        firstButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
        firstButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20).isActive = true
        firstButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        firstButton.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -20).isActive = true

        
    }
    
    @objc func buttonAction(sender: UIButton) {
        let dialogsViewController = DialogsViewController()
        self.navigationItem.backButtonTitle = ""
        self.navigationController?.navigationBar.tintColor = .orange
        self.navigationController?.pushViewController(dialogsViewController, animated: true)
    }
}

//
//  CardCell.swift
//  Lesson6UIKIT
//
//  Created by Авазбек Надырбек уулу on 20.05.25.
//

import Foundation
import UIKit

class CardCellView: UITableViewCell {
    // static свойство внутри ячейки и идет регистрация ячейки чтобы мы могли его скопировать из памяти и потом его использовать данные внутри самой ячейки
    static let identifier: String = "CardCellView"
    
    private lazy var cardView: UIView = {
        $0.backgroundColor = .systemGray
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.addSubViews(cardImageView, titleLabel, descrTextLabel, mainBTN)
        return $0
    }(UIView())
    
    private lazy var cardImageView: UIImageView = {
        $0.contentMode = .scaleAspectFill
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIImageView())
    
    private lazy var titleLabel: UILabel = {
        $0.font = UIFont.systemFont(ofSize: 20, weight: .black)
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.numberOfLines = 0
        return $0
    }(UILabel())
    
    private lazy var descrTextLabel: UILabel = {
        $0.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.numberOfLines = 0
        return $0
    }(UILabel())
    
    private lazy var mainBTN: UIButton = {
        $0.backgroundColor = .systemBlue
        $0.setTitle("Перейти", for: .normal)
        $0.setTitleColor(.white, for: .normal)
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIButton())
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(cardView)
    }
    
     func setUpCell(modelCard: ModelCard) {
        cardImageView.image = UIImage(named: modelCard.image)
        titleLabel.text = modelCard.title
        descrTextLabel.text = modelCard.text
        setupConstraints()
    }
    
    private func setupConstraints() {
        
    NSLayoutConstraint.activate([
        cardView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
        cardView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
        cardView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
        cardView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
        
        cardImageView.topAnchor.constraint(equalTo: cardView.topAnchor, constant: 40),
        cardImageView.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 10),
        cardImageView.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -10),
        cardImageView.heightAnchor.constraint(equalToConstant: 150),
        
        titleLabel.topAnchor.constraint(equalTo: cardImageView.bottomAnchor, constant: 35),
        titleLabel.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -22),
        titleLabel.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 22),
        
        descrTextLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
        descrTextLabel.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -22),
        descrTextLabel.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 22),
        
        mainBTN.topAnchor.constraint(equalTo: descrTextLabel.bottomAnchor, constant: 10),
        mainBTN.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -22),
        mainBTN.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 22),
        mainBTN.heightAnchor.constraint(equalToConstant: 50),
        mainBTN.bottomAnchor.constraint(equalTo: cardView.bottomAnchor, constant: -25)
    ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

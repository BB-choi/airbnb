//
//  testCell.swift
//  Airbnb
//
//  Created by Kai Kim on 2022/05/25.
//

import UIKit

class HeroCell: UICollectionViewCell {
    static let id = "HeroCell"

    private var title: UILabel = {
        let label = UILabel()
        label.text = "슬기로운\n자연생활"
        label.numberOfLines = 0
        label.font = .largeRegular
        label.setContentHuggingPriority(.defaultHigh, for: .vertical)
        return label
    }()

    private var content: UILabel = {
        let label = UILabel()
        label.text = "에어비엔비가 엄선한\n위시리스트를 만나보세요."
        label.numberOfLines = 0
        label.font = .smallRegular
        return label
    }()

    private var button: UIButton = {
        let button = UIButton()
        button.setTitle("여행 아이디어 얻기", for: .normal)
        button.backgroundColor = .gray1
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    private var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        let image = UIImage(named: "HeroImage")
        imageView.image = image
        return imageView
    }()

    private lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [title, content])
        stackView.axis = .vertical
        stackView.spacing = 16
        stackView.distribution = .fill
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        configureDisplay()
        configureConstraints()
    }

    private func configureDisplay() {
        self.contentView.addSubview(imageView)
        self.contentView.addSubview(stackView)
        self.contentView.addSubview(button)
    }

    private func configureConstraints() {
        NSLayoutConstraint.activate([

            imageView.topAnchor.constraint(equalTo: self.contentView.topAnchor),
            imageView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor),
            imageView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
            imageView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor),

            stackView.topAnchor.constraint(equalTo: imageView.topAnchor, constant: 24),
            stackView.trailingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: -105),
            stackView.leadingAnchor.constraint(equalTo: imageView.leadingAnchor, constant: 16),

            button.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 16),
            button.widthAnchor.constraint(equalToConstant: 165),
            button.leadingAnchor.constraint(equalTo: stackView.leadingAnchor),
            button.heightAnchor.constraint(equalToConstant: 36)
        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

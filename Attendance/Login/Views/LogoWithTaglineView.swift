//
//  LogoWithTaglineView.swift
//  Attendance
//
//  Created by Pranav Patil on 14/10/22.
//

import UIKit

/**
 View for displaying app logo and tagline.
 */
class LogoWithTaglineView: UIView {

    // MARK: - Initialization

    init() {
        super.init(frame: .zero)
        setupStackViewAndAddSubviews()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Private helpers

    private func setupStackViewAndAddSubviews() {
        // Setup stackView
        let stackView: UIStackView = UIStackView()
        addSubview(stackView)
        stackView.axis = .horizontal
        stackView.alignment = .center
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])

        // Setup image view for app logo and add to stackview
        let imageSize = AppConstant.loginScreenAppLogoSize
        let imageView  = UIImageView(image: UIImage(named: AppImages.appIconWithAppColorBackground))
        imageView.layer.masksToBounds = false
        imageView.layer.cornerRadius = imageSize.height/2
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageView.heightAnchor.constraint(equalToConstant: imageSize.height),
            imageView.widthAnchor.constraint(equalToConstant: imageSize.width)
        ])
        stackView.addArrangedSubview(imageView)

        // Setup tagline label and add to stackview
        let label = UILabel()
        let attributedLabel = NSAttributedString(
            string: AppStrings.tagline,
            attributes: [NSAttributedString.Key.font: AppFonts.taglineFont])
        label.attributedText = attributedLabel
        stackView.addArrangedSubview(label)
    }

}

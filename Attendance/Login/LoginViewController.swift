//
//  LoginViewController.swift
//  Attendance
//
//  Created by Pranav Patil on 09/10/22.
//

import Foundation
import UIKit

class LoginViewController: UIViewController {
    
    private let stackView: UIStackView = UIStackView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: AppColors.appColor)

        setupStackView()
        setupAndAddAppLogoImage()
        setupAndAddIntroLabel()
        
    }

    private func setupStackView() {
        view.addSubview(stackView)
        stackView.axis = .horizontal
        stackView.alignment = .center

        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor)
        ])
    }

    private func setupAndAddAppLogoImage() {
        let imageSize = CGSize(width: 100, height: 100)
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
    }

    private func setupAndAddIntroLabel() {
        let label = UILabel()
        let attributedLabel = NSAttributedString(
            string: AppTitles.tagline,
            attributes: [NSAttributedString.Key.font: AppFonts.taglineFont])
        label.attributedText = attributedLabel
        stackView.addArrangedSubview(label)
    }

}

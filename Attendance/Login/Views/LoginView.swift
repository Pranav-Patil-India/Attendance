//
//  LoginView.swift
//  Attendance
//
//  Created by Pranav Patil on 14/10/22.
//

import UIKit

/**
 View for taking login details from user.
 */
class LoginView: UIView {

    // MARK: - Initialization

    init() {
        super.init(frame: .zero)
        setupSubviews()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Private helpers

    private func setupSubviews() {
        let loginLabel = UILabel()
        let attributedLabel = NSAttributedString(
            string: AppStrings.loginLabelText,
            attributes: [NSAttributedString.Key.font: AppFonts.taglineFont])
        loginLabel.attributedText = attributedLabel
        addSubview(loginLabel)
        loginLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            loginLabel.topAnchor.constraint(equalTo: topAnchor),
            loginLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            loginLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
        ])

        let emailTextfield = UITextField()
        emailTextfield.placeholder = AppStrings.emailTextFieldPlaceholderText
        emailTextfield.borderStyle = .roundedRect
        addSubview(emailTextfield)
        emailTextfield.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            emailTextfield.topAnchor.constraint(equalTo: loginLabel.bottomAnchor, constant: AppConstant.loginViewInterItemSpacing),
            emailTextfield.leadingAnchor.constraint(equalTo: loginLabel.leadingAnchor),
            emailTextfield.trailingAnchor.constraint(equalTo: loginLabel.trailingAnchor),
            emailTextfield.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }

}

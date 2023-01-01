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

    // MARK: - Constants

    private static let loginViewInterItemSpacing: CGFloat = 20
    private static let loginButtonHorizontalPadding: CGFloat = 20
    private static let loginButtonVerticalPadding: CGFloat = 10

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
            string: String.loginLabelText,
            attributes: [NSAttributedString.Key.font: UIFont.taglineFont])
        loginLabel.attributedText = attributedLabel
        addSubview(loginLabel)
        loginLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            loginLabel.topAnchor.constraint(equalTo: topAnchor),
            loginLabel.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])

        let emailTextfield = UITextField()
        emailTextfield.placeholder = String.emailTextFieldPlaceholderText
        emailTextfield.borderStyle = .roundedRect
        addSubview(emailTextfield)
        emailTextfield.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            emailTextfield.topAnchor.constraint(
                equalTo: loginLabel.bottomAnchor,
                constant: LoginView.loginViewInterItemSpacing),
            emailTextfield.leadingAnchor.constraint(equalTo: leadingAnchor),
            emailTextfield.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
        
        let passwordTextfield = UITextField()
        passwordTextfield.placeholder = String.passwordTextFieldPlaceholderText
        passwordTextfield.borderStyle = .roundedRect
        addSubview(passwordTextfield)
        passwordTextfield.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            passwordTextfield.topAnchor.constraint(
                equalTo: emailTextfield.bottomAnchor,
                constant: LoginView.loginViewInterItemSpacing),
            passwordTextfield.leadingAnchor.constraint(equalTo: emailTextfield.leadingAnchor),
            passwordTextfield.trailingAnchor.constraint(equalTo: emailTextfield.trailingAnchor)
        ])
        
        let loginButton = UIButton()
        loginButton.setTitle(String.loginButtonText, for: .normal)
        loginButton.backgroundColor = UIColor.loginButtonColor
        loginButton.layer.cornerRadius = 8
        loginButton.configuration = UIButton.Configuration.filled()
        loginButton.configuration?.contentInsets = NSDirectionalEdgeInsets(
            top: Self.loginButtonVerticalPadding,
            leading: Self.loginButtonHorizontalPadding,
            bottom: Self.loginButtonVerticalPadding,
            trailing: Self.loginButtonHorizontalPadding)
    
        addSubview(loginButton)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            loginButton.topAnchor.constraint(
                equalTo: passwordTextfield.bottomAnchor,
                constant: LoginView.loginViewInterItemSpacing),
            loginButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            loginButton.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }

}

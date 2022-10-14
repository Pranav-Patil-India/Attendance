//
//  LoginViewController.swift
//  Attendance
//
//  Created by Pranav Patil on 09/10/22.
//

import Foundation
import UIKit

/**
 View controller for login screen.
 */
class LoginViewController: UIViewController {

    // MARK: - Properties

    private let logoWithTaglineView = LogoWithTaglineView()
    private let loginView = LoginView()
    private let containerView = UIView()

    // MARK: - Overriden methods

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewHierarchy()
        setupConstraints()
        styliseViews()
    }

    // MARK: - Private helpers

    private func setupViewHierarchy() {
        view.addSubview(logoWithTaglineView)
        view.addSubview(containerView)
        containerView.addSubview(loginView)
    }

    private func setupConstraints() {
        // Logo with tagline view
        logoWithTaglineView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            logoWithTaglineView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            logoWithTaglineView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            logoWithTaglineView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            logoWithTaglineView.heightAnchor.constraint(equalToConstant: AppConstant.loginScreenAppLogoSize.height)
        ])

        // Container view
        containerView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: logoWithTaglineView.bottomAnchor),
            containerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            containerView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])

        // Login view
        loginView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            loginView.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            loginView.leadingAnchor.constraint(equalTo: containerView.layoutMarginsGuide.leadingAnchor),
            loginView.trailingAnchor.constraint(equalTo: containerView.layoutMarginsGuide.trailingAnchor)
        ])
    }
    
    private func styliseViews() {
        view.backgroundColor = AppColors.appColor

        // Container view
        containerView.backgroundColor = .white
        containerView.layer.cornerRadius = AppConstant.loginContainerViewTopBorderRadius
        containerView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
    }

}

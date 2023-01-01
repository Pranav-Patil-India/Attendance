//
//  UIColor+.swift
//  Attendance
//
//  Created by Pranav Patil on 01/01/23.
//

import UIKit

extension UIColor {
    
    static let loginButtonColor = UIColor.colorFromRGB(rgbValue: 0x3C79F5)
    static let appColor = UIColor.colorFromRGB(rgbValue: 0x8FE3CF)
    static let loginViewBackgroundColor = UIColor.colorFromRGB(rgbValue: 0xF9F9F9)

    private static func colorFromRGB(rgbValue: UInt) -> UIColor {
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }

}

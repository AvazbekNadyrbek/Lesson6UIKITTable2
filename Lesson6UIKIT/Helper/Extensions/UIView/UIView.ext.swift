//
//  UIView.ext.swift
//  Lesson6UIKIT
//
//  Created by Авазбек Надырбек уулу on 20.05.25.
//

import UIKit

extension UIView {
    func addSubViews(_ subViews: UIView...) {
        subViews.forEach {
            self.addSubview($0)
        }
    }
}

//
//  UIAlertViewControllerExtension.swift
//  Contacts
//
//  Created by Mahender Reddy Gaddam on 12/14/19.
//  Copyright © 2019 Mahender Reddy Gaddam. All rights reserved.
//

import UIKit

extension UIAlertController {
    static func show(_ message: String, from viewController: UIViewController, completion: ((UIAlertAction) -> Void)?) {
        let alert = UIAlertController(title: "Contacts", message: message, preferredStyle: .alert)
        alert.addAction(.init(title: Constants.AletButtonTitle.OK, style: .cancel, handler: completion))
        viewController.present(alert, animated: true, completion: nil)
    }
}

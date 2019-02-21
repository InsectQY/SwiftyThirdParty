//
//  Toast.swift
//  QYNews
//
//  Created by Insect on 2019/1/28.
//  Copyright © 2019 Insect. All rights reserved.
//

import UIKit
import QMUIKit

public class Toast: NSObject {

    public static func showError(_ tip: String, detailText: String? = nil, in view: UIView, hideAfterDelay delay: TimeInterval = 2.5) {
        QMUITips.showError(tip, detailText: detailText, in: view, hideAfterDelay: delay)
    }

    public static func showSucceed(_ tip: String, detailText: String? = nil, in view: UIView, hideAfterDelay delay: TimeInterval = 2.5) {
        QMUITips.showSucceed(tip, detailText: detailText, in: view, hideAfterDelay: delay)
    }

    public static func showInfo(_ tip: String, detailText: String? = nil, in view: UIView, hideAfterDelay delay: TimeInterval = 2.5) {
        QMUITips.showInfo(tip, detailText: detailText, in: view, hideAfterDelay: delay)
    }
}

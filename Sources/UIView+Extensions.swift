//
//  UIView+Touch.swift
//  SensorVisualizerKit-iOS
//
//  Created by Joe Blau on 4/9/19.
//  Copyright © 2019 SensorVisualizerKit. All rights reserved.
//

import UIKit

extension UIView {
    static func buildTouchView(touchColor: UIColor, borderColor: UIColor) -> UIView {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 64, height: 64))
        view.layer.backgroundColor = touchColor.cgColor
        view.layer.borderWidth = 1
        view.layer.borderColor = borderColor.cgColor
        view.layer.cornerRadius = view.frame.height / 2
        view.layer.opacity = 1.0
        return view
    }
    
    static func buildShakeView(rootView: UIView, shakeColor: UIColor) -> UIView {
        let shakePath = UIBezierPath(rect: UIScreen.main.bounds.insetBy(dx: -100, dy: -100))
        let maskPath = UIBezierPath(rect: UIScreen.main.bounds)
        shakePath.append(maskPath)
        shakePath.usesEvenOddFillRule = true
        
        let layer = CAShapeLayer()
        layer.path = shakePath.cgPath
        layer.fillRule = CAShapeLayerFillRule.evenOdd
        layer.fillColor = shakeColor.cgColor
        layer.opacity = 0.4
        
        let view = UIView(frame: rootView.bounds)
        view.layer.addSublayer(layer)
        return view
    }
}

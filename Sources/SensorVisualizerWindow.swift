//
//  SensorVisualizerWindow.swift
//  SensorVisualizerKit-iOS
//
//  Created by Joe Blau on 4/9/19.
//  Copyright © 2019 SensorVisualizerKit. All rights reserved.
//

import UIKit

open class SensorVisualizerWindow: UIWindow {

    public weak var sensorVisualizerWindowDelegate: SensorVisualizerWindowDelegate?

    let primaryColor: UIColor
    let secondaryColor: UIColor
    var animator: UIDynamicAnimator?

    var touchPointViews = [UITouch: UIView]()
    
    internal let visualizationWindow: UIWindow = {
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.isUserInteractionEnabled = false
        window.windowLevel = UIWindow.Level.statusBar
        window.backgroundColor = .clear
        window.isHidden = false
        window.rootViewController = UIViewController()
        window.rootViewController?.view.frame = UIScreen.main.bounds
        return window
    }()

    /// Initialize a sensor visualizer window
    ///
    /// - Parameters:
    ///     - frame: The size of the window which is usually the screen bounds
    ///     - primary (optional): The tap and shake color which defaults to the tint color
    ///     - secondary (optional): The tap border color which defaults to the tint color
    public init(frame: CGRect,
                primary: UIColor = UIView().tintColor,
                secondary: UIColor = UIView().tintColor) {
        self.primaryColor = primary
        self.secondaryColor = secondary

        super.init(frame: frame)
        if let windowView = visualizationWindow.rootViewController?.view {
            self.animator = UIDynamicAnimator(referenceView: windowView)
        }
    }
    
    @available(iOSApplicationExtension 13.0, *)
    public init(windowScene: UIWindowScene,
                primary: UIColor = UIView().tintColor,
                secondary: UIColor = UIView().tintColor) {
        self.primaryColor = primary
        self.secondaryColor = secondary

        super.init(windowScene: windowScene)
        if let windowView = visualizationWindow.rootViewController?.view {
            self.animator = UIDynamicAnimator(referenceView: windowView)
        }
    }

    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

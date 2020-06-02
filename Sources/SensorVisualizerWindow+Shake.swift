//
//  SensorVisualizerWindow+Shake.swift
//  SensorVisualizerKit
//
//  Created by Joe Blau on 4/9/19.
//  Copyright © 2019 SensorVisualizerKit. All rights reserved.
//

import UIKit

fileprivate protocol ShakeVisualizable {
    func shake(intensity: CGFloat)
}

extension SensorVisualizerWindow: ShakeVisualizable {
    
    public override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if event?.subtype == .motionShake, shouldShowFingertips(for: .shake) {
            shake(intensity: 1800)
            shake(intensity: -1800)
        }
    }
    
    fileprivate func shake(intensity: CGFloat) {
        guard let windowView = visualizationWindow.rootViewController?.view else { return }
        let shakeView = UIView.buildShakeView(rootView: windowView, shakeColor: primaryColor)
    
        windowView.addSubview(shakeView)
        animator?.addBehavior(UIAttachmentBehavior.shake(item: shakeView, anchor: windowView.center))
        animator?.addBehavior(UIPushBehavior.shake(items: [shakeView], intensity: intensity))
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            shakeView.removeFromSuperview()
        }
    }

}


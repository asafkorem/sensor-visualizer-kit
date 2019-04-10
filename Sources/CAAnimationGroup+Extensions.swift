//
//  CAAnimationGroup+Extensions.swift
//  SensorVisualizerKit-iOS
//
//  Created by Joe Blau on 4/9/19.
//  Copyright © 2019 SensorVisualizerKit. All rights reserved.
//

import UIKit

extension CAAnimationGroup {
    static var createTouchAnimation: CAAnimationGroup {
        let opacityAnimation = CABasicAnimation(keyPath: "opacity")
        opacityAnimation.toValue = 0.7
        
        let borderAnimation = CABasicAnimation(keyPath: "borderWidth")
        borderAnimation.toValue = 4
        
        let scaleAnimation = CABasicAnimation(keyPath: "transform.scale")
        scaleAnimation.toValue = 0.4
        
        return buildGroup(animations: [borderAnimation, scaleAnimation, opacityAnimation])
    }
    
    static var removeTouchAnimation: CAAnimationGroup {
        let opacityAnimation = CABasicAnimation(keyPath: "opacity")
        opacityAnimation.toValue = 0.0
        
        let borderAnimation = CABasicAnimation(keyPath: "borderWidth")
        borderAnimation.toValue = 0
        
        let scaleAnimation = CABasicAnimation(keyPath: "transform.scale")
        scaleAnimation.toValue = 1.4
        
        return buildGroup(animations: [borderAnimation, scaleAnimation, opacityAnimation])
    }
    
    static var pressTouchAnimation: CAAnimationGroup {
        let opacityAnimation = CABasicAnimation(keyPath: "opacity")
        opacityAnimation.toValue = 0.7
        
        let borderAnimation = CABasicAnimation(keyPath: "borderWidth")
        borderAnimation.toValue = 4
        
        let scaleAnimation = CABasicAnimation(keyPath: "transform.scale")
        scaleAnimation.toValue = 0.4
        
        return buildGroup(animations: [borderAnimation, scaleAnimation, opacityAnimation])
    }
    
    static var peekTouchAnimation: CAAnimationGroup {
        let opacityAnimation = CABasicAnimation(keyPath: "opacity")
        opacityAnimation.toValue = 0.7
        
        let borderAnimation = CABasicAnimation(keyPath: "borderWidth")
        borderAnimation.toValue = 4
        
        let scaleAnimation = CABasicAnimation(keyPath: "transform.scale")
        scaleAnimation.toValue = 0.8
        
        return buildGroup(animations: [borderAnimation, scaleAnimation, opacityAnimation])
    }
    
    static var popTouchAnimation: CAAnimationGroup {
        let opacityAnimation = CABasicAnimation(keyPath: "opacity")
        opacityAnimation.toValue = 0.7
        
        let borderAnimation = CABasicAnimation(keyPath: "borderWidth")
        borderAnimation.toValue = 4
        
        let scaleAnimation = CABasicAnimation(keyPath: "transform.scale")
        scaleAnimation.toValue = 1.2
        
        return buildGroup(animations: [borderAnimation, scaleAnimation, opacityAnimation])
    }
    
    // MARK: - Private
    
    private static func buildGroup(animations: [CAAnimation]) -> CAAnimationGroup {
        let group = CAAnimationGroup()
        group.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeOut)
        group.isRemovedOnCompletion = false
        group.fillMode = CAMediaTimingFillMode.forwards
        group.duration = 0.3
        group.animations = animations
        return group
    }
}

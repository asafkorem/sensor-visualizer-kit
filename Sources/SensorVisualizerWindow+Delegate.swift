//
//  SensorVisualizerWindow+Delegate.swift
//  SensorVisualizerKit-iOS
//
//  Created by Tiago Rodrigues on 02/06/2020.
//  Copyright © 2020 SensorVisualizerKit. All rights reserved.
//

import UIKit

public enum Sensor {
    case shake, touch
}

public protocol SensorVisualizerWindowDelegate: class {
    func sensorVisualizerWindow(_ window: SensorVisualizerWindow, shouldShowFingertipsFor sensor: Sensor) -> Bool
}

extension SensorVisualizerWindow {
    @inlinable func shouldShowFingertips(for sensor: Sensor) -> Bool {
        sensorVisualizerWindowDelegate?.sensorVisualizerWindow(self, shouldShowFingertipsFor: sensor) ?? true
    }
}

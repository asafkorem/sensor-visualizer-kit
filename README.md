# SensorVisualizerKit

[![](https://img.shields.io/badge/swift-5-brightgreen.svg?style=flat-square)](https://swift.org)
[![](https://img.shields.io/badge/platform-iOS-brightgreen.svg?style=flat-square)](https://www.apple.com/ios/)
[![](https://img.shields.io/github/license/joeblau/sensor-visualizer-kit.svg?style=flat-square)](https://github.com/joeblau/sensor-visualizer-kit/blob/master/LICENSE)

Visualize iOS sensors for live presentations, iOS AppStore demos, Apple Store prototypes, design reviews.

![](.github/svk-demo.gif)

## Install

**Carthage:** To integrate SensorVisualizerKit into your Xcode project using Carthage, specify it in your `Cartfile`:

```sh
github "joeblau/sensor-visualizer-kit" ~> 0.1
```

**Cocoapods:**  To integrate SensorVisualizerKit into your Xcode project using CocoaPods, specify it in your `Podfile`:

```sh
pod 'SensorVisualizerKit', '~> 0.1'
```

## Use

**Storyboards**

```swift
import UIKit
import SensorVisualizerKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow? = {
        return SensorVisualizerWindow(frame: UIScreen.main.bounds)
    }()

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        return true
    }
}

```

**Programatic**

```swift
import UIKit
import SensorVisualizerKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, 
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = SensorVisualizerWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = ViewController()
        window?.makeKeyAndVisible()
        return true
    }
}
```

## Configure

The method signature for initializing the SesnorVisuzliserWindow takes 1 required property and 2 optional properties

- **frame:** The size of the window which is ususally the screen bounds
- **primary _(optional)_:** The tap and shake color which defaults to the tint color
- **secondary _(optional)_:** The tap border color which defaults to the tint color


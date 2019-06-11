# SensorVisualizerKit

[![](https://img.shields.io/badge/swift-5-brightgreen.svg?style=flat-square)](https://swift.org)
[![](https://img.shields.io/badge/platform-iOS-brightgreen.svg?style=flat-square)](https://www.apple.com/ios/)
[![](https://img.shields.io/github/license/joeblau/sensor-visualizer-kit.svg?style=flat-square)](https://github.com/joeblau/sensor-visualizer-kit/blob/master/LICENSE)

Visualize iOS sensors for live presentations, iOS AppStore demos, Apple Store prototypes, design reviews.

[![](.github/demo.gif)](https://vimeo.com/331486696)

## Install

**Carthage:** To integrate SensorVisualizerKit into your Xcode project using Carthage, specify it in your `Cartfile`:

```sh
github "joeblau/sensor-visualizer-kit" ~> 0.1
```

**Cocoapods:** To integrate SensorVisualizerKit into your Xcode project using CocoaPods, specify it in your `Podfile`:

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

- **frame:** The size of the window which is usually the screen bounds
- **primary _(optional)_:** The tap and shake color which defaults to the tint color
- **secondary _(optional)_:** The tap border color which defaults to the tint color

## Sensors

**Sensor Visualizer Kit**

- [x] **Accelerometer:** An accelerometer measures changes in velocity along one axis.
- [ ] **Bluetooth Radio:** A wireless technology standard for exchanging data between fixed and mobile devices over short distances using short-wavelength.
- [x] **Capacitive pressure sensors (3D Touch):** When you press the display, capacitive sensors instantly measure microscopic changes in the distance between the cover glass and the backlight. iOS uses these measurements to provide fast, accurate, and continuous response to ﬁnger pressure.
- [x] **Digitizer:** Thin plastic film attached to the screen. It’s sensitive to your finger movements, and sends information about the position and movements of your fingers to the motherboard.
- [ ] **Linear Actuator (Taptic Engine)** - A device that can reproduce the sensation of motion or generate new and distinct tactile experiences.
- [ ] **Physical Button:**
- [ ] **Physical Switch:**

**Native iOS**

- [x] **Battery:** A device consisting of one or more electrochemical cells with external connections provided to power electrical devices.
- [x] **Cellular Network Radio:** A communication network where the last link is wireless.
- [x] **Clock:** An instrument used to measure, keep, and indicate time.
- [x] **Global Positioning System (GPS):** A global navigation satellite system that provides geolocation and time information to a GPS receiver anywhere on or near the Earth where there is an unobstructed line of sight to four or more GPS satellites.
- [x] **Wi-Fi Radio:** A family of radio technologies that is commonly used for the wireless local area networking.

## Limitations

The visualizer does not work with all controllers. The operating system can present controllers above the application window.  These controllers do not work with the sensor visualizer.

- [AVPlayerViewController](https://developer.apple.com/documentation/avkit/avplayerviewcontroller)
- [SFSafariViewController](https://developer.apple.com/documentation/safariservices/sfsafariviewcontroller)
- [UIAlertController](https://developer.apple.com/documentation/uikit/uialertcontroller)


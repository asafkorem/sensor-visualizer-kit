Pod::Spec.new do |s|
  s.name         = "SensorVisualizerKit"
  s.version      = "0.1"
  s.summary      = "Visualize iOS sensors"
  s.description  = <<-DESC
    Visualize iOS sensors for live presentations, iOS AppStore demos, Apple Store prototypes, design reviews.
  DESC
  s.homepage     = "https://github.com/joeblau/sensor-visualizer-kit"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Joe Blau" => "holla@joeblau.com" }
  s.social_media_url   = "https://twitter.com/joeblau"
  s.ios.deployment_target = "9.0"
  s.source       = { :git => "https://github.com/joeblau/sensor-visualizer-kit.git", :tag => s.version.to_s }
  s.swift_version = '5.0'
  s.source_files  = "Sources/**/*"
  s.frameworks  = "UIKit"
end

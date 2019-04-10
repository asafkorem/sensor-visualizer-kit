Pod::Spec.new do |s|
  s.name         = "SensorVisualizerKit"
  s.version      = "0.1"
  s.summary      = ""
  s.description  = <<-DESC
    Visualize sensors on iOS devices
  DESC
  s.homepage     = "https://github.com/joeblau/sensor-visualizer-kit"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Joe Blau" => "josephblau@gmail.com" }
  s.social_media_url   = ""
  s.ios.deployment_target = "8.0"
  s.source       = { :git => "https://github.com/joeblau/sensor-visualizer-kit.git", :tag => s.version.to_s }
  s.source_files  = "Sources/**/*"
  s.frameworks  = "Foundation"
end

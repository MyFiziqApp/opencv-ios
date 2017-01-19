Pod::Spec.new do |s|
    s.name             = 'OpenCV-iOS'
    s.version          = '3.2.0'
    s.summary          = 'OpenCV (Computer Vision) for iOS as a dynamic library.'

    s.description      = <<-DESC
OpenCV: open source computer vision library

    Homepage: http://opencv.org
    Online docs: http://docs.opencv.org
    Q&A forum: http://answers.opencv.org
    Dev zone: http://code.opencv.org
    DESC

    s.homepage         = 'https://github.com/edc1591/opencv-ios'
    s.license          = { :type => '3-clause BSD', :file => 'LICENSE' }
    s.authors          = 'opencv.org'
    s.source           = { :git => 'https://github.com/edc1591/opencv-ios.git', :tag => s.version.to_s }

    s.ios.deployment_target = '8.0'
    s.library = 'c++'
    s.vendored_frameworks = 'build/opencv2.framework'
    s.frameworks = [
        "Accelerate",
        "AssetsLibrary",
        "AVFoundation",
        "CoreGraphics",
        "CoreImage",
        "CoreMedia",
        "CoreVideo",
        "Foundation",
        "QuartzCore",
        "UIKit"
    ]

    s.prepare_command = <<-CMD
      python platforms/ios/build_framework.py build
    CMD
end

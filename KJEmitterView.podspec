Pod::Spec.new do |s|
  s.name     = "KJEmitterView"
  s.version  = "7.2.0"
  s.summary  = "77 Tools"
  s.homepage = "https://github.com/yangKJ/KJEmitterView"
  s.license  = "MIT"
  s.license  = {:type => "MIT", :file => "LICENSE"}
  s.license  = "Copyright (c) 2018 yangkejun"
  s.author   = { "77" => "ykj310@126.com" }
  s.platform = :ios
  s.source   = {:git => "https://github.com/yangKJ/KJEmitterView.git",:tag => "#{s.version}"}
  s.social_media_url = 'https://www.jianshu.com/u/c84c00476ab6'
  s.requires_arc = true
  s.static_framework = true

  s.ios.source_files = 'Sources/KJEmitterHeader.h'

  s.subspec 'Categories' do |xx|
    xx.dependency 'KJCategories'
  end

  s.subspec 'Kit' do |xx|
    xx.dependency 'KJCategories/Kit'
  end
  
  s.subspec 'Foundation' do |xx|
    xx.dependency 'KJCategories/Foundation'
  end
  
  s.subspec 'Language' do |xx|
    xx.source_files = "Sources/Language/**/*.{h,m}"
  end
  
  s.subspec 'LeetCode' do |xx|
    xx.source_files = "Sources/LeetCode/**/*.{h,m}"
  end

  s.subspec 'Control' do |xx|
    xx.source_files = "Sources/Control/**/*.{h,m}"
    xx.frameworks = 'QuartzCore'
  end

  s.subspec 'Classes' do |xx|
    xx.source_files = "Sources/Classes/**/*.{h,m}"
    xx.resources = "Sources/Classes/**/*.{bundle}"
  end
  
end



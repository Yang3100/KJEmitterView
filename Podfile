# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

#use_frameworks!
#inhibit_all_warnings! #消除第三方仓库的警告
# 新版本采用trunk模式，无需clone庞大的master
#source 'https://github.com/CocoaPods/Specs.git'

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['COMPILER_INDEX_STORE_ENABLE'] = "NO"
    end
  end
end

#install! 'cocoapods', generate_multiple_pod_projects: true

def main_pods
  pod 'ChainThen'
  pod 'KJCategories'
  pod 'KJCategories/Foundation'
  pod 'KJCategories/UIKit/UIView'
  pod 'KJCategories/UIKit/UILabel'
  pod 'KJCategories/UIKit/UIImage'
  pod 'KJCategories/UIKit/UIButton'
  pod 'KJCategories/UIKit/UITextView'
  pod 'KJCategories/UIKit/UINavigation'
  pod 'KJCategories/UIKit/UICollectionView'
  pod 'KJCategories/UIKit/UIViewController'

end

target 'KJEmitterView' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!
  
  main_pods
  
  # Pods for KJEmitterView

end

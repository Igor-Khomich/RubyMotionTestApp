# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project'
require 'motion/project/testflight'

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  
  #app.vendor_project('vendor/SitecoreMobileSDK.framework', :xcode,
  #      :target => 'SitecoreMobileSDK',
  #      :headers_dir => 'vendor/SitecoreMobileSDK.framework/Headers')


  app.codesign_certificate = 'iPhone Developer: Oleksandr Dodatko (V3H7RLLSD5)'
  app.provisioning_profile = '/Users/cert/Mobile_SDK.mobileprovision'

  app.device_family = [:ipad, :iphone]
  app.name = 'HelloMotion'


  app.testflight.sdk = 'vendor/TestFlight'
  # @adk account
  app.testflight.api_token = 'a3620a9760dc97411328bc73864c9a82_Mzk2NDIxMjAxMi0wNC0xMyAwNDowNzozMS42MDQ2NTQ'

  # "RubyMotionResearch" team
  app.testflight.team_token = '76e4eff0673631589a1a82e78911b057_MTczMzAwMjAxMy0wMS0wOSAwMjozNzo0NC4wODkwNTk'

  app.testflight.distribution_lists = ['Mobile Team']
end

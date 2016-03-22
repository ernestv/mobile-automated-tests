require 'rubygems'
require 'appium_lib'

require 'appium_lib'
#require_relative '../pages/home'
#require_relative '../pages/inner_screen'

describe "SHARE" do
  
#  it 'share' do

 desired_caps = {
   caps:  {
        platformName:  'Android',
        platformVersion: '5.0.1',
        deviceName:    'CrowRhapS4',
        browserName:   'Chrome',
    }
}
 
@appium_driver = Appium::Driver.new(desired_caps)

@selenium_driver = @appium_driver.start_driver

Appium.promote_appium_methods Object

@selenium_driver.get("http://www.rhapsody.com")
sleep(10)

#  element = find_element(:id, 'home-2016')
#  element = find_element(:class, 'left-off-canvas-toggle')
#  element.click
#  sleep(5)
  
element = find_element(:class, 'cta-wrapper').click

driver_quit

#end
end
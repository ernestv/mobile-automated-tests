require 'rubygems'
require 'appium_lib'

require 'appium_lib'
#require_relative '../pages/home'
#require_relative '../pages/inner_screen'

  describe "Menu" do
      
      
  desired_caps = {
   caps:  {
        platformName:  'Android',
        platformVersion: '5.0.1',
        deviceName:    '4d00b54cd00c226f',
        browserName:   'Chrome',
    }
}
 
@appium_driver = Appium::Driver.new(desired_caps)
@selenium_driver = @appium_driver.start_driver
Appium.promote_appium_methods Object      
      
@selenium_driver.get("http://www.rhapsody.com")
#sleep(10)

  element = find_element(:id, 'home-2016')
  element = find_element(:class, 'social')
#  element = find_element(:class, 'left-off-canvas-toggle')
  element.click
  sleep(5)

element = find_element(:class, 'main-list')
  element.click
  sleep(5)
  
  element = find_element(:id, 'pricing')
  element = find_element(:class, 'social-holder')
  element.click
  sleep(5)

#  element = find_element(:class, 'close')
#  element.click
#  sleep(5)

#wait = Selenium::WebDriver::Wait.new :timeout => 10

driver_quit

    end
#	end
 #end

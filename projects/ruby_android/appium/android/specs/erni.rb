require 'rubygems'
require 'appium_lib'
require 'rake'


describe "MENU" do

#  it "Menu" do
      
      
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

#  element = find_element(:id, 'home-2016')
#  element = find_element(:class, 'social')
#  element = find_element(:class, 'left-off-canvas-toggle')
#  element.click
#  sleep(5)

#@selenium.click
#@selenium.open "http://www.rhapsody.com"
@element.click "Start listening now 3"
@selenium.wait_for_page_to_load "30000"

driver_quit

    end
#	end

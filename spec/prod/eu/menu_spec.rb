require 'rubygems'
require 'appium_lib'
require 'rspec'
require 'rake'

#describe "US" do
  describe "MENU" do

		it "Menu" do
      
      
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
      
@selenium_driver.get("http://fr-beta.napster.com/")
#sleep(10)

  element = find_element(:id, 'home-2016')
  element = find_element(:class, 'left-off-canvas-toggle')
  element.click
  sleep(5)

#wait = Selenium::WebDriver::Wait.new :timeout => 10

driver_quit

    end
	end
 #end
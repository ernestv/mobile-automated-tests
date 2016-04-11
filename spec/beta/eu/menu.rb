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
      
@selenium_driver.get("http://www-beta.rhapsody.com/")
#sleep(10)

  element = find_element(:id, 'home-2016')
  element = find_element(:class, 'menu-icon')
#  element = find_element(:class, 'hide-for-large-up')
  element.click
 sleep(5)

  element = find_element(:class, 'main-list')
  element = find_element(:link_text, 'MUSIC')
  element.click
  sleep(10)

#wait = Selenium::WebDriver::Wait.new :timeout => 5
@driver.find_element(:class, 'genre-item').displayed?
#element.click

driver_quit

    end
	end
 #end

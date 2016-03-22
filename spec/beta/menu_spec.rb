require 'rubygems'
require 'appium_lib'
require 'rspec'
require 'rake'
require 'touch_action'

      describe 'SWIPE' do
      
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
      
     
@selenium_driver.get("http://www-beta.rhapsody.com")

it 'swipe' do

    element = find_element(:id, 'home-2016')
    element = find_element(:class, 'menu-icon')
    element.click
    sleep(5)

    
    element = find_element(:link_text, 'Music')
    element.click
    sleep(5)

    @driver.find_element(:id, 'music').displayed?

 driver_quit
end
      end
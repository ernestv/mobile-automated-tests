require 'rubygems'
require 'appium_lib'

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

@selenium_driver.get("http://www.rhapsody.com/")
sleep(5)


  element = find_element(:id, 'info')
 element = find_element(:class,'hero-content-wrapper')
#  element = find_element(:class, 'left-off-canvas-toggle menu-icon')
#  element = find_element(:href, '#')
  element = find_element(:class, 'button.small.signup.cta.js-order-cta')
  element.click
  
driver_quit


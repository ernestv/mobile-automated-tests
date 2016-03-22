require 'rubygems'
require 'appium_lib'

require 'appium_lib'
#require_relative '../pages/home'
#require_relative '../pages/inner_screen'

describe "PRICING" do

  it 'Pricing' do

 desired_caps = {
   caps:  {
        deviceType: 'phone',
        platformName:  'Android',
        platformVersion: '5.1',
        deviceName:    'TA92917WWB',
        browserName:   'Chrome',
    }
}
 
 
@appium_driver = Appium::Driver.new(desired_caps)

@selenium_driver = @appium_driver.start_driver

Appium.promote_appium_methods Object
  
@selenium_driver.get("http://www.rhapsody.com/genre/pop")
sleep(5)

  element = find_element(:id, 'nav-freetrial')
  element.click
  sleep(5)

wait = Selenium::WebDriver::Wait.new :timeout => 10
wait.until { @driver.find_element(:id, 'pricing').displayed? }

driver_quit

  end
end
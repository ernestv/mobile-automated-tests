require 'rubygems'
require 'appium_lib'

describe "PRICING" do

  it 'Pricing' do

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
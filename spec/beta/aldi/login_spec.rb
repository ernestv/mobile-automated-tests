require 'rspec'
require 'rubygems'
require 'appium_lib'

describe "ALDI" do

it 'Login' do
  
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


@selenium_driver.get("http://www-beta.lifestore-flat.de/")
sleep(5)

#element = find_element(:class, 'six column tablet_two mobile_two')
element = find_element(:id, 'footer')
element.click
sleep(5)

wait = Selenium::WebDriver::Wait.new :timeout => 5
@driver.find_element(:id, 'ember473').displayed?
driver_quit

end
end
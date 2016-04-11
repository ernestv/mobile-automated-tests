require 'rspec'
require 'rubygems'
require 'appium_lib'

describe "ALDI" do

it 'Artist' do
  
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


@selenium_driver.get("http://www.lifestore-flat.de/genre/pop")
#sleep(10)

#element = find_element(:link_text, 'Join now')
element = find_element(:class, 'artist-item')
element.click
sleep(5)

wait = Selenium::WebDriver::Wait.new :timeout => 5
@driver.find_element(:id, 'artist-page').displayed?
driver_quit

end
end
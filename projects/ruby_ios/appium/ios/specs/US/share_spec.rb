require 'rubygems'
require 'appium_lib'

describe "SHARE" do
  
  it 'share' do

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

@selenium_driver.get("http://www.rhapsody.com/music")
#sleep(10)

  element = find_element(:id, 'browse-genres')
  element = find_element(:class, 'genre-item')
  element.click
  sleep(3)
  
  element = find_element(:class, 'share-link-container')
  element.click
  sleep(10)
  
  element = find_element(:class, 'small-6')
  sleep(5)
  
  element = find_element(:class, 'js-social-link')
  element.click
  sleep(5)
 

#wait = Selenium::WebDriver::Wait.new :timeout => 10
#wait.until { @driver.find_element(:class, 'progress-circle-in-motion').displayed? }

driver_quit

end
end
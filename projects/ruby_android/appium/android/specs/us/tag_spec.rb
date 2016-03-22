require 'rubygems'
require 'appium_lib'

describe "TAG" do
  
  it 'Tag' do

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
sleep(10)

  element = find_element(:id, 'browse-genres')
  element = find_element(:class, 'tag-button')
  element.click
  sleep(3)

wait = Selenium::WebDriver::Wait.new :timeout => 10
wait.until { @driver.find_element(:id, 'tag-page').displayed? }


  element = find_element(:id, 'tag-page')
  element = find_element(:class, 'playlist-item')
  element.click
  sleep(3)

wait = Selenium::WebDriver::Wait.new :timeout => 10

driver_quit

end
end
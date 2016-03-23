require 'rubygems'
require 'appium_lib'

describe "DE" do
  
  it 'tag' do

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

@selenium_driver.get("http://de-beta.napster.com/music")
sleep(5)

  element = find_element(:id, 'browse-genres')
  element = find_element(:class, 'tag-button')
  element.click
  sleep(5)

wait = Selenium::WebDriver::Wait.new :timeout => 20
@driver.find_element(:class, 'playlist-item').displayed?

driver_quit

end
end

#wait.until { @driver.find_element(:class, 'playlist-item').displayed? }
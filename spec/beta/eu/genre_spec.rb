require 'rubygems'
require 'appium_lib'

describe "POP" do

it 'Pop' do
  
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


@selenium_driver.get("http://fr-beta.napster.com/music")
sleep(10)

#  element = find_element(:id, 'browse-genres')
#  element = find_element(:class, 'tag-button')
#  element.click
#  sleep(3)

element = find_element(:class, 'genre-item')
element.click
sleep(10)

wait = Selenium::WebDriver::Wait.new :timeout => 10

driver_quit

end
end
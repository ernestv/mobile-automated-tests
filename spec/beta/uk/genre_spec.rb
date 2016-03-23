require 'rspec'
require 'rubygems'
require 'appium_lib'

describe "UK" do

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


@selenium_driver.get("http://gb-beta.napster.com/music")
sleep(5)

#  element = find_element(:id, 'browse-genres')
#  element = find_element(:class, 'tag-button')
#  element.click
#  sleep(3)

element = find_element(:link_text, 'Jazz')
element.click
sleep(5)

#wait = Selenium::WebDriver::Wait.new :timeout => 10
@driver.find_element(:class, 'genre-blurb').displayed?
@driver.find_element(:id, 'subgenres').displayed?
@driver.find_element(:id, 'top-tracks').displayed?
@driver.find_element(:id, 'new-releases').displayed?
@driver.find_element(:id, 'popular-artists').displayed?
driver_quit

end
end
require 'rspec'
require 'rubygems'
require 'appium_lib'

describe "CA" do

it 'Cta' do
  
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


@selenium_driver.get("http://ca-beta.napster.com/")
sleep(5)

element = find_element(:link_text, 'Start listening now')
element.click
sleep(5)

wait = Selenium::WebDriver::Wait.new :timeout => 5
@driver.find_element(:class, 'list-unstyled').displayed?
driver_quit

end
end
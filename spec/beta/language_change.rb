require 'rspec'
require 'rubygems'
require 'appium_lib'

describe "LANGUAGE CHANGE" do

it 'Spanish' do
  
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


@selenium_driver.get("http://www.rhapsody.com")
sleep(10)

element = find_element(:id, 'footer_language_picker')
element.click
sleep(5)

element = find_element(:name, 'Espa?ol')
element.click
sleep(5)

#wait = Selenium::WebDriver::Wait.new :timeout => 2
#@driver.find_element(:class, 'list-unstyled').displayed?
driver_quit

end
end
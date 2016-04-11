require 'rubygems'
require 'appium_lib'

describe "EU" do
  
  it 'Music' do

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

@selenium_driver.get("http://fr-beta.napster.com/")
sleep(5)

element = find_element(:id, 'home-2016')
element = find_element(:class, 'toggle_menu')
element.click
sleep(5)
  
element = find_element(:link_text, 'Musique').click
sleep(40)

#wait = Selenium::WebDriver::Wait.new :timeout => 40
#@driver.find_element(:class, 'music-headers').displayed?
@driver.find_element(:class, 'tags').displayed?

driver_quit

end
end
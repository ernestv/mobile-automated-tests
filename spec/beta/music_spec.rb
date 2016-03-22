require 'rubygems'
require 'appium_lib'

describe "MUSIC" do

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

@selenium_driver.get("http://www-beta.rhapsody.com")
sleep(10)

element = find_element(:id, 'home-2016')
    element = find_element(:class, 'menu-icon')
    element.click
    sleep(5)
     @driver.find_element(:link_text, 'Music').click
#     @driver.element.click
#    sleep(5)
    
    wait = Selenium::WebDriver::Wait.new :timeout => 5
    @driver.find_element(:id, 'music').displayed?

driver_quit

end
end
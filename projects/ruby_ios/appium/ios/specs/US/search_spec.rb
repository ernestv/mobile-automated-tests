require 'rubygems'
require 'appium_lib'
#require 'selenuim-webdriver'

describe "SHARE" do
  
#  it 'share' do

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

  element = find_element(:id, 'home-2016')
  element = find_element(:class, 'left-off-canvas-toggle')
  element.click
  sleep(5)
  
  element = find_element(:class, 'mobile-menu-list-search')
  element = find_element(:class, 'mobile-menu-search-button')
  element.click
  sleep(5)

#driver.navigate.to "http://www.google.com/ncr"
element = driver.find_element(:name, 'search-term')
element.send_keys "maroon"
element.submit
puts driver.title
  
#  element = find_element(:class, 'search-term')
#  element.click()
#  element.send_keys("foo")
  
#  @selenium_driver.find_element(:class, "search-term").send_keys("maroon")

#  element.click
#  sleep(2)
#  textfield.sendKeys("maroon")
#  element.send_keys("maroon");
#  element.click
  sleep(5)


driver_quit

#end
end
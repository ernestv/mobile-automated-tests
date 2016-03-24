require 'rspec'
require 'rubygems'
require 'appium_lib'

describe "DE" do

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


@selenium_driver.get("http://de-beta.napster.com/")
sleep(2)

element = find_element(:id, 'plans')
#element = find_element(:class, 'button')
#element = find_element(:class, 'format_section')
#element = find_element(:class, 'row')
#element = find_element(:class, 'center_child')
element = find_element(:class, 'center_content')
element = find_element(:link_text, 'Jetzt testen')
sleep(2)
element.click
sleep(2)

#element = find_element(:class,'center_content')
#element = find_element(:class,'button')
#element.click
#sleep(5)

#element = find_element(:link_text, 'Jetzt testen')
#element.click
#sleep(5)

wait = Selenium::WebDriver::Wait.new :timeout => 5
@driver.find_element(:class, 'list-unstyled').displayed?
driver_quit

end
end
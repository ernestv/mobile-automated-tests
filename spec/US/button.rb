# rake android['android/element/button']
describe 'android/element/button' do
  @appium_driver = Appium::Driver.new(desired_caps)

@selenium_driver = @appium_driver.start_driver

Appium.promote_appium_methods Object

@selenium_driver.get("http://www.rhapsody.com/music")
sleep(10)

  def before_first
    # nav to buttons activity
    wait { find('App').click }
    wait { find('Activity').click }
    wait { find('Animation').click }
  end

  def after_last
    # nav back to home activity
    3.times { back }
  end
end
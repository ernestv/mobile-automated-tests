require 'rubygems'
require 'appium_lib'

#require_relative '../pages/home'
#require_relative '../pages/inner_screen'

describe 'GENRE' do

  before(:each) do
    appium_txt = File.join(Dir.pwd, 'appium.txt')
    caps = Appium.load_appium_txt file: appium_txt
    Appium::Driver.new(caps).start_driver
    Appium.promote_appium_methods RSpec::Core::ExampleGroup
    Appium.promote_singleton_appium_methods Pages
  end


end

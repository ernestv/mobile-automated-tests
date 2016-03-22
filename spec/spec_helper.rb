require_relative '../lib/tutorial'
require 'watir-webdriver'
require 'selenuim-webdriver'
require 'rspec'


RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
    mocks.verify_partial_doubles = true
  end
  config.formatter = :documentation
  config.add_setting :web_root

  env = ENV['E'] ? "-#{ENV['E']}" : ""
  config.web_root = {}
  config.web_root[:al] = "http://www.lifestore-flat.de/"
  config.web_root[:ca] = "http://ca.napster.com/"
  config.web_root[:de] = "http://de.napster.com/"
  config.web_root[:eu] = "http://fr.napster.com/"
  config.web_root[:latam] = "http://br.napster.com/"
  config.web_root[:mtv] = "http://www.mtvmusic.de/"
  config.web_root[:uk] = "http://gb.napster.com/"
  config.web_root[:us] = "http://www.rhapsody.com"
  config.web_root[:vivo] = "http://vivomusica.napster.com"
  
  if ENV['E'] == 'beta'
    config.web_root[:al] = "http://www-beta.lifestore-flat.de/" 
   config.web_root[:ca] = "http://ca-beta.napster.com/"
    config.web_root[:de] = "http://de-beta.napster.com/"
    config.web_root[:eu] = "http://fr-beta.napster.com/"
    config.web_root[:latam] = "http://br-beta.napster.com/"
    config.web_root[:mtv] = "http://www-beta.mtvmusic.de/"
    config.web_root[:uk] = "http://gb-beta.napster.com/"
    config.web_root[:us] = "http://www-beta.rhapsody.com"
    config.web_root[:vivo] = "http://vivomusica-beta.napster.com"
  end
  
  if ENV['E'] == 'int'
  config.web_root[:al] = "http://www-int.lifestore-flat.de/" 
  config.web_root[:de] = "http://de-int.napster.com/"
  config.web_root[:eu] = "http://fr-int.napster.com/"
  config.web_root[:ca] = "http://ca-int.napster.com/"
  config.web_root[:latam] = "http://br-int.napster.com/"
  config.web_root[:mtv] = "http://www-int.mtvmusic.de/"
  config.web_root[:uk] = "http://gb-int.napster.com/"
  config.web_root[:us] = "http://www-int.rhapsody.com"
  config.web_root[:vivo] = "http://vivomusica-int.napster.com"
end
  
  if ENV['E'] == 'preview'
  config.web_root[:al] = "http://www-preview.lifestore-flat.de/" 
  config.web_root[:de] = "http://de-preview.napster.com/"
  config.web_root[:eu] = "http://fr-preview.napster.com/"
  config.web_root[:ca] = "http://ca-preview.napster.com/"
  config.web_root[:latam] = "http://br-preview.napster.com/"
  config.web_root[:mtv] = "http://www-preview.mtvmusic.de/"
  config.web_root[:uk] = "http://gb-preview.napster.com/"
  config.web_root[:us] = "http://www-preview.rhapsody.com"
  config.web_root[:vivo] = "http://vivomusica-preview.napster.com"
end
  
  config.web_root[:al] = "http://www#{env}.lifestore-flat.de/"
  config.web_root[:de] = "http://de#{env}.napster.com"
  config.web_root[:eu] = "http://fr#{env}.napster.com"
#  config.web_root[:ca] = "http://ca#{env}.napster.com"
  config.web_root[:ca] = "http://ca#{env}.napster.com/"
  config.web_root[:latam] = "http://br#{env}.napster.com"
  config.web_root[:uk] = "http://gb#{env}.napster.com"
  config.web_root[:us] = "http://www#{env}.rhapsody.com"
  config.web_root[:vivo] = "http://vivomusica#{env}.napster.com"


RSpec.configure do |config|
  config.include Appium::Helpers
end


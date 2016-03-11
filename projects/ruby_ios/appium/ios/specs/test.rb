require_relative '../requires' # enable auto complete in RubyMine

describe 'spec home, buttons, and controls' do
  t 'ernesto' do
    capabilities.setCapability("browserName", MobileBrowserType.BROWSER);
    DesiredCapabilities capabilities = new DesiredCapabilities();
    capabilities.setCapability("deviceName", "Samsung Galaxy S4");
    capabilities.setCapability("platformName", "Android");
    capabilities.setCapability(CapabilityType.BROWSER_NAME, "Browser");
    capabilities.setCapability("platformVersion", "5.0.1");
#    capabilities.setCapability(MobileCapabilityType.TAKES_SCREENSHOT, "true");
    driver = new AndroidDriver<WebElement>(new URL("http://127.0.0.1:4723/wd/hub"), capabilities);
    driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
    driver.get("http://www.google.com");
  end
end

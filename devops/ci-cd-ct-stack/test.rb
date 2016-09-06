require "watir-webdriver"

caps = Selenium::WebDriver::Remote::Capabilities.firefox
caps[:name] = "Chrome Caps"

browser = Watir::Browser.new(
  :remote,
  :url => "http://192.168.99.100:14444/wd/hub",
  :desired_capabilities => caps)

browser.goto "http://www.seleniumframework.com"
p browser.title
browser.quit

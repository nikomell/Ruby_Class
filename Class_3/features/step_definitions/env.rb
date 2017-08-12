require 'rubygems'
require 'selenium-webdriver'
require 'cucumber'

$driver = Selenium::WebDriver.for :firefox

# After do
#   $driver.close
#   $driver.quit
# end
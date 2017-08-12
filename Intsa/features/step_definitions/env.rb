require 'rubygems'
require 'selenium-webdriver'
require 'cucumber'
require 'faker'



$driver = Selenium::WebDriver.for :firefox
$driver.manage.timeouts.implicit_wait = 6




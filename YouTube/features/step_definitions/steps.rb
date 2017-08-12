Then /^open YouTube$/ do
  $driver.get "https://www.youtube.com/"
  sleep 3
end

Then /^click on Sign in$/ do
  element = $driver.find_element :xpath => "//span[@class='yt-uix-button-content' and text() = 'Sign in' ]"
  element.click
  sleep 3
end

Then /^click on more option$/ do
  element = $driver.find_element :xpath => "//div[@class='IMH1vc lUHSR Hj2jlf' and text() = 'More options']"
  element.click
  sleep 2
  element = $driver.find_element :xpath => "//div[@class='jO7h3c' and text() = 'Create account']"
  element.click
  sleep 4
end

Then /^input data into field$/ do
  element = $driver.find_element :xpath => "//a[@id='signup-with-gmail-link' and text() = 'I would like a new Gmail address']"
  element.click
  element = $driver.find_element :xpath => "//input[@id='FirstName']"
  element.click
  element.send_keys Faker::Name.first_name
  element = $driver.find_element :xpath => "//input[@id='LastName']"
  element.click
  element.send_keys Faker::Name.last_name
  # element = $driver.find_element :xpath => "//input[@id='EmailAddress']"
  # element.click
  value = ""; 8.times{value  << (65 + rand(25)).chr}
  element = $driver.find_element :xpath => "//input[@id='GmailAddress']"
  element.send_keys value #+ "@gmail.com"
  # value = ""; 8.times{value  << (65 + rand(25)).chr}
  # element = $driver.find_element :xpath => "//input[@id='Passwd']"
  # element.send_keys value
  # element = $driver.find_element :xpath => "//input[@id='PasswdAgain']"
  # element.send_keys value
  value = "Shamaich77";
  element = $driver.find_element :xpath => "//*[@id='Passwd']"
  element.send_keys value
  element = $driver.find_element :xpath => "//*[@id='PasswdAgain']"
  element.send_keys value
  element = $driver.find_element :xpath => "//div[@id=':0' and text() = 'Month']"
  element.click
  # element = $driver.find_element :xpath => "//div[@class = 'goog-inline-block goog-flat-menu-button-caption' and text() = 'September']"
  # element.click
  element = $driver.find_element :xpath => "//*[@id=':5']"
  $driver.action.move_to(element).perform
  element.click
  element = $driver.find_element :xpath => "//input[@id='BirthDay']"
  element.click
  element.send_keys Faker::Number.between(1, 30)
  element = $driver.find_element :xpath => "//input[@id='BirthYear']"
  element.click
  element.send_keys Faker::Number.between(1960, 1999)
  element = $driver.find_element :xpath => ".//*[@id='Gender']/div"
  element.click
  element = $driver.find_element :xpath => ".//*[@id=':g']/div"
  $driver.action.move_to(element).perform
  element.click
  # Selenium::WebDriver::Support::Select.new(driver.find_element(:id, ":g")).select_by(:value, "OTHER")
  # sleep 1
  # element = $driver.find_element :xpath => "//div[@role='listbox'][2]"
  # element.click
  # sleep 3
  # element = $driver.find_element :xpath => "//input[@value='OTHER']"
  # element.click
  # element = $driver.find_element :xpath => "//input[@id='RecoveryPhoneNumber']"
  # element.click
  # element.send_keys Faker::PhoneNumber.phone_number
  # element = $driver.find_element :xpath => "//input[@id='TermsOfService']"
  # element.click
  # sleep 2
  element = $driver.find_element :xpath => "//input[@id='submitbutton']"
  element.click
  sleep 4
  element = $driver.find_element :xpath => ".//*[@id='tos-scroll-button']/div/img"
  $driver.action.double_click(element).perform
  sleep 3
  element = $driver.find_element :xpath => ".//*[@id='tos-scroll-button']/div/img"
  $driver.action.double_click(element).perform
  sleep 2
  element = $driver.find_element :xpath => "//input[@id='iagreebutton']"
  $driver.action.double_click(element).perform
  element = $driver.find_element :xpath => "//input[@id='submitbutton']"
  $driver.action.move_to(element).perform
end
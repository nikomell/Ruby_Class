Then /^open Amazon$/ do
  $driver.get "https://www.amazon.com"
  sleep 4
end

Then /^go the Dept_link$/ do
  element = $driver.find_element :xpath => "//a[@id = 'nav-link-shopall']"
  element.click
  sleep 4
  #$driver.action.move_to(element).click.perform                       :xpath => ("//a[@id = 'nav-link-shopall']")
end


Then /^click the ([^"]*) section$/ do |box|
  element = $driver.find_element :xpath => "//a[@class = 'a-link-normal fsdLink fsdDeptLink' and text () = '#{box}']"
  element.click
end

Then /^select the ([^"]*)$/ do |cat|
  element = $driver.find_element :xpath => "//img[@alt = '#{cat}']"
  element.click
  sleep 4
end

Then /^pick the book([^']*)$/ do |num|
  element = $driver.find_element :xpath => "(//img[@class = 'aok-align-center'])[#{num}]"
  element.click
end

Then /^add to cart$/ do
  element = $driver.find_element :xpath => "//input[@id = 'add-to-cart-button']"
  element.click
  sleep 4
end

Then /^check if ([^"]*) item in cart$/ do |n|
  element = $driver.find_element :xpath => "//span[@id = 'nav-cart-count' and text() = '#{n}']"
  element.click
end

Then /^press the Home logo$/ do
  element = $driver.find_element :xpath => "//span[@class = 'nav-logo-base nav-sprite' and text () = 'Amazon' ]"
  element.click
  sleep 4
end
###########################################
Then /^click on ([^"]*)$/ do |link|
  element = $driver.find_element :xpath => "//a[@class = 'a-link-normal fsdLink fsdDeptLink' and text () = '#{link}']"
  element.click
  $driver.navigate().back();
end
##############################################

#No working because cannot find the Amazon Basic

Then /^select ([^"]*)$/ do |home|
  element = $driver.find_element :xpath => "//img[@alt = '#{home}']"
  element.click
  sleep 3
end

Then /^check if ([^"]*) item into cart$/ do |b|
  $driver.find_element :xpath => "//span[@id = 'nav-cart-count' and text() = '#{b}']"
  sleep 3
  $driver.navigate().back();
end

Then /^pick item ([^"]*)$/ do |qwe|
  element = $driver.find_element :xpath => "(//img[@alt ='Product Details'])[#{qwe}]"
  element.click
  #"(//img[@class ='s-access-imgage cfMarker'])[#{qwe}]"
  #("//img[@alt ='Product Details']")[5]
end
###############################################################
Then /^search in ([^']*)$/ do |all|
  elemen = $driver.find_element :xpath => "//div[@class = 'nav-search-facade']"
  elemen.click
  element = $driver.find_element :xpath => "//select[@id = 'searchDropdownBox']"
  element.click
  elem = $driver.find_element :xpath => "//option[text() = '#{all}']"
  elem.click
end

Then /^search for ([^']*)$/ do |input|
  element = $driver.find_element :xpath => "//input[@id = 'twotabsearchtextbox']"
  element.send_keys "#{input}"
  element = $driver.find_element :xpath => "//input[@type = 'submit']"
  element.click
  element = $driver.find_element :xpath => "//input[@id = 'twotabsearchtextbox']"
  element.clear
end

Then /^enter zip code$/ do
  element = $driver.find_element :xpath => "//input[@id = 'zip-input']"
  element.send_keys "94040"
  elem = $driver.find_element :xpath => "//input[@aria-labelledby='continue-shop-button-announce']"
  elem.click
end

Then /^choose in Featured ([^']*) category$/ do |z|
  element = $driver.find_element :xpath => "//a[@class = 'bxc-grid-overlay__link'][#{z}]"
  element.click
end



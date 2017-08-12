Then /^open Amazon$/ do
  $driver.get "https://www.amazon.com"
  sleep 4
end

Then /^enter the text into the search field$/ do
  element = $driver.find_element :id => 'twotabsearchtextbox'
  element.send_keys 'Toys'
  sleep 4
end

Then /^click on the search button$/ do
  element = $driver.find_element :xpath => "//input[@type = 'submit']"
  element.click
  sleep 4
end

Then /^select 1st avaible toy on the page$/ do
  element = $driver.find_element :xpath =>
  element.click
  sleep 4
end

Then /^press button add item to the cart$/ do
  element = $driver.find_element :xpath => "//input[@id = 'add-to-cart-button']"
  element.click
end

Then /^verify the item in the cart$/ do
  element = $driver.find_element :xpath => "//span[@id = 'nav-cart-count' and text() = '1']"
  $driver.quit
end



###################################################################################################


Then /^go the Dept_link$/ do
  element = $driver.find_element :xpath => "//a[@id = 'nav-link-shopall']"
  element.click
  #$driver.action.move_to(element).click.perform                       :xpath => ("//a[@id = 'nav-link-shopall']")
end


  Then /^click the book section$/ do
    element = $driver.find_element :xpath => "//a[@class = 'a-link-normal fsdLink fsdDeptLink' and text () = 'Books']"
    element.click
  end

Then /^select the Top 20 list$/ do
  element = $driver.find_element :xpath => "//img[@alt = 'Top 20 lists in Books']"
  element.click
end

Then /^pick the book$/ do
  element = $driver.find_element :xpath => "(//img[@class = 'aok-align-center'])[1]"
  element.click
end

Then /^add to cart$/ do
  element = $driver.find_element :xpath => "//input[@id = 'add-to-cart-button']"
  element.click
end

Then /^check if item in cart$/ do
  element = $driver.find_element :xpath => "//span[@id = 'nav-cart-count' and text() = '1']"
  element.click
end

Then /^press the Home logo$/ do
  element = $driver.find_element :xpath => "//span[@class = 'nav-logo-base nav-sprite' and text () = 'Amazon' ]"
  element.click
  $driver.quit
end

###############################################################################

Then /^search for hair product$/ do
  element = $driver.find_element :id => 'twotabsearchtextbox'
  element.send_keys 'Hair product'
end

Then /^submit search$/ do
  element = $driver.find_element :xpath => "//input[@type = 'submit']"
  element.click
  sleep 4
end

Then /^click on 1st product$/ do
  element = $driver.find_element :xpath => "(//img[@class = 's-access-image cfMarker'])[5]"
  element.click
  sleep 4
end

Then /^add product to the cart$/ do
  element = $driver.find_element :xpath => "//input[@id='add-to-cart-button']"
  element.click
end

Then /^go the cart delete one product$/ do
  element = $driver.find_element :xpath => "//span[@class = 'nav-cart-icon nav-sprite']"
  element.click
end

 Then /^delete item from the cart$/ do
  element = $driver.find_element :xpath => "//input[@name = 'submit.delete.CIT2JLVITOQAH']"
  element.click
end

Then /^verify the no item in the cart$/ do
  element = $driver.find_element :xpath => "//span[@id = 'nav-cart-count' and text() = '0']"
  $driver.quit
end
################################################################################################

Then /^go to Today's Deals$/ do
  element = $driver.find_element :xpath => '//a[@class = "nav-a" and text() = "Today\'s Deals"]'
  element.click
  sleep 5
end

Then /^pick  the item$/ do
  element = $driver.find_element :xpath => "(//div[@class='a-row layer backGround'])[13]"
  element.click

end

Then /^put into cart$/ do
  element = $driver.find_element :xpath => "//input[@id = 'add-to-cart-button']"
  element.click
end

 Then /^go Home$/ do
   element = $driver.find_element :xpath => "//span[@class = 'nav-logo-base nav-sprite' and text () = 'Amazon' ]"
   element.click
    $driver.quit
 end

# Then /^find product on main page$/ do
#
#   freeze.until ($driver.find_element :xpath => "//img[@alt = 'Fire TV Stick, only $39.99']" )
#   $driver.find_element(:xpath => "//img[@alt = 'Fire TV Stick, only $39.99']").click
#   end       https://gist.github.com/kenrett/7553278 resolve the question

Then /^the quantity for two$/ do
  element = $driver.find_element :xpath => "//div/span/select/option[2]"
  element.click
end

Then /^thanks no protection$/ do
  element = $driver.find_element :xpath => "//*[@id='bb_noThanks_link']"
  element.click
end

Then /^verify the items in the cart$/ do
$driver.find_element :xpath => "//span[@id = 'nav-cart-count' and text() = '1']"
end

Then /^click the Textbooks$/ do
  element = $driver.find_element :xpath => "//a[@class = 'a-link-normal fsdLink fsdDeptLink' and text () = 'Textbooks']"
  element.click
end
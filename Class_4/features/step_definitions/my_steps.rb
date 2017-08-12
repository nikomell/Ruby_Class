Then(/^go Amazon$/) do
  $driver.get ("http://www.amazon.com")
  $driver.manage.timeouts.implicit_wait = 5
end


Then(/^search for book ([^"]*)$/) do |book|
  element = $driver.find_element :xpath => "//input[@id='twotabsearchtextbox']"
  element.click
  element.send_keys "Books"
  element = $driver.find_element :xpath => "//input[@value='Go']"
  element.click
  sleep 2
  element = $driver.find_element :xpath => "//img[@class='aok-align-center']['#{book}']"
  element.click
end

Then(/^use ([^"]*)$/) do |click|
  element = $driver.find_element :xpath => "(//input[@type='submit' and @value = '#{click}'])[last()]"
  element.click
end

Then /^search for toys$/ do
  element = $driver.find_element :xpath => "//input[@id='twotabsearchtextbox']"
  element.click
  element.send_keys "Toys"
  element = $driver.find_element :xpath => "//input[@value='Go']"
  element.click
end

 Then(/^I count all elements in arrey with more then 4 stars$/) do
   elements = $driver.find_elements :xpath => "//span[@class = 'a-icon-alt'][starts-with(text(), '4')or starts-with(text(), '5')]"
   elements.count
   puts elements
 end


Then(/^Log out$/) do
  element = $driver.find_elements :xpath => "//span[@class = 'nav-line-1' and text() = 'Hello, Marina']"
  if element.count >0
    element[0].click
    element = $driver.find_element :xpath => "//span[@class = 'nav-text' and text() = 'Not Marina? Sign out']"
    element.click
  end
end


Then(/^Log in$/) do
  pass = Faker::Internet.password
  fistnm = Faker::Name.first_name
  lastnm = Faker::Name.last_name
  fulnm = fistnm + " " + lastnm
  email = Faker::Internet.email(fulnm)

  element = $driver.find_elements :xpath => "//span[@class = 'nav-line-1' and text() = 'Hello. Sign in']"
  if element.count >0
    element = $driver.find_element :xpath => "//span[@class = 'nav-line-1' and text() = 'Hello. Sign in']"
    element.click
    sleep 3
    element = $driver.find_element :xpath => "//input[@id='ap_email']"
    element.click
    element.send_keys email
    element = $driver.find_element :xpath => "//input[@id='ap_password']"
    element.click
    element.send_keys pass
    element = $driver.find_element :xpath => "//input[@id='signInSubmit']"
    element.click
    end
  if
    $driver.find_element :xpath => ("//div[@class='a-box-inner a-alert-container']")[0]
      element = $driver.find_element :xpath => "//a[@id='createAccountSubmit']"
      element.click
    sleep 2
      element = $driver.find_element :xpath => "//input[@name='customerName']"
      element.click
      element.send_keys fulnm
      element = $driver.find_element :xpath => "//input[@id='ap_email']"
      element.click
      element.send_keys email
      element = $driver.find_element :xpath => "//input[@id='ap_password']"
      element.click
      element.send_keys pass
      element = $driver.find_element :xpath => "//input[@id='ap_password_check']"
      element.click
      element.send_keys pass
      element = $driver.find_element :xpath => "//input[@id='continue']"
      element.click
  end
    if
    $driver.find_element :xpath => "//div[@class='a-box-inner a-alert-container']"
      $driver.quit
    end

  element = $driver.find_elements :xpath => "//span[@class = 'nav-line-1' and text() = 'Hello, #{fistnm}']"
  if element.count >0
    $driver.action.move_to(element[0]).perform
    sleep 4

    # element = $driver.find_element :xpath => "//span[@class='nav-text' and text() ='Your Watchlist']"
    # element.location_once_scrolled_into_view

    element = $driver.find_element :xpath => "//span[@class='nav-text' and text() ='Your Watchlist']"
    elem_pos = element.location.y
    $driver.execute_script("window.scroll(0, #{elem_pos})")


    element = $driver.find_element :xpath => "//span[@class='nav-text' and text() ='Not #{fistnm}? Sign Out']"
    element.click
  end
 end

Then(/^simple loop$/) do
  sleep 2
  links = $driver.find_elements :xpath => "//div[@id = 'nav-xshop']/a[@class = 'nav-a']"
  sleep 3
  for i in 0.. links.count-1 do
  links[i].click
  links = $driver.find_elements :xpath => "//div[@id = 'nav-xshop']/a[@class = 'nav-a']"
  end
  $driver.quit

end


Then(/^Departments ([^"]*)$/) do |lo|
  element = $driver.find_element :xpath => "//span[@class='nav-line-2' and text() = 'Departments']"
  element.click
  sleep 3
  links = $driver.find_elements :xpath => "(//div[@class='fsdDeptCol'])[#{lo}]/a[@class='a-link-normal fsdLink fsdDeptLink']"
  sleep 3
  for i in 1 .. links.count do
    elements = $driver.find_element :xpath => "(//div[@class='fsdDeptCol'])[#{lo}]/a[@class='a-link-normal fsdLink fsdDeptLink'][#{i}]"
    elements.click
    $driver.navigate.back
  end
  $driver.quit
end

Then(/^Footer$/) do
  element = $driver.find_element :xpath => "//div[@class='navFooterLine navFooterLinkLine navFooterDescLine']//span[@class='navFooterDescText']"
  elem_pos = element.location.y
  $driver.execute_script("window.scroll(0, #{elem_pos})")
  links = $driver.find_elements :xpath => "//table[@class='navFooterMoreOnAmazon']//td[@class='navFooterDescItem']"
  for i in 1 .. links.count do
    elements = $driver.find_element :xpath => "(//table[@class='navFooterMoreOnAmazon']//td[@class='navFooterDescItem'])[#{i}]/a[@class='nav_a']"
    elements.click
    $driver.navigate.back
  end
end

Then(/^Vertical column near footer$/) do
  element = $driver.find_element :xpath => "//div[@class='navFooterLine navFooterLinkLine navFooterDescLine']"
  elem_pos = element.location.y
  $driver.execute_script("window.scroll(0, #{elem_pos})")

  links = $driver.find_elements :xpath => "//table[@class='navFooterVerticalColumn']//a[@class='nav_a']"
  for i in 1 .. links.count do
    elements = $driver.find_element :xpath => "(//table[@class='navFooterVerticalColumn']//a[@class='nav_a'])[#{i}]"
    elements.click
    $driver.navigate.back
  end
  $driver.quit
end

Then /^test$/ do

  links = $driver.find_elements :xpath => "//table[@class='navFooterMoreOnAmazon']//td[@class='navFooterDescItem']"
  (1..links.count).each do |i|
    elements = $driver.find_element :xpath => "(//table[@class='navFooterMoreOnAmazon']//td[@class='navFooterDescItem'])[#{i}]/a[@class='nav_a']"
    elements.click
    $driver.navigate.back
  end
end


Then(/^study loop$/) do
  $driver.get "https://www.amazon.com/s/ref=nb_sb_ss_c_1_13?url=search-alias%3Daps&field-keywords=electronic+cigarette&sprefix=electronic+ci%2Caps%2C228&crid=2461C9PC8Y1KQ"
  sleep 4
  $driver.execute_script "window.scrollTo(0, document.body.scrollHeight);"
  sleep 4
  pages = $driver.find_elements :xpath => "//span[@class = 'pagnLink']"
  totalpages = pages.count-1
    for i in 0..totalpages do
      items = $driver.find_elements :xpath => "//div[@class='a-fixed-left-grid-inner'][.//span[@class='a-icon-alt' and text() = '5 out of 5 stars']]//a[@class='a-link-normal s-access-detail-page  s-color-twister-title-link a-text-normal']"
        if items.count == 0
        raise "NO 5 STARS test"
        end
        sleep 4
      for x in 0.. items.count-1 do
        puts items[x]
        puts items[x].text
        puts "Hoorey"
      end
      $driver.execute_script "window.scrollTo(0, document.body.scrollHeight);"
      pages = $driver.find_elements :xpath => "//div[@id='pagn']/span[@class='pagnLink']"
      pages[i].click
    end
    sleep 3
  items = $driver.find_elements :xpath => "//div[@class='a-fixed-left-grid-inner'][.//span[@class='a-icon-alt' and text() = '5 out of 5 stars']]//a[@class='a-link-normal s-access-detail-page  s-color-twister-title-link a-text-normal']"
  if items.count == 0
    raise "NO 5 stars"
  end
end


Then(/^Verify ([^"]*) item in the carusel/) do |name|
  element = $driver.find_element :xpath => "//div[@id='nav-upnav']/a[@class='nav-a']"
  element.click
  sleep 2
  element = $driver.find_elements :xpath => "//li[@aria-hidden='false']//span[@class = 'aux-theme-tab-text' and text() = '#{name}']"
  sleep 3
    for i in 0..2
      if element.count>0
        element[0].click
        # if element != element[0]
        #   puts element.text
        #   puts element[0].text
        #   raise "Not this one"
        # else
        #   puts "We're good: #{name}"
        #   puts element.text
        # end
        break
      else
        arrow =  $driver.find_element :xpath => "//span[@class='airstream-sprite airstream-carousel-next-icon']"
        arrow.click
        element = $driver.find_elements :xpath => "//li[@aria-hidden='false']//span[@class = 'aux-theme-tab-text' and text() = '#{name}']"
      end
    end
end

Then(/^Click all items$/) do
  element = $driver.find_element :xpath => "//div[@id='nav-upnav']/a[@class='nav-a']"
  element.click
  sleep 3
  links = $driver.find_elements :xpath =>  "//li[contains(@class, 'a-carousel-card aux-theme-tab') and @aria-hidden ='false']"
  sleep 2
  for x in 0..2 do
    sleep 1
    links = $driver.find_elements :xpath =>  "//li[contains(@class, 'a-carousel-card aux-theme-tab') and @aria-hidden ='false']"
    links.count
    puts links.count
  for i in 0.. links.count-1 do
    links[i].click
    sleep 2
    links = $driver.find_elements :xpath => "//li[contains(@class, 'a-carousel-card aux-theme-tab') and @aria-hidden ='false']"
    s
  end
    arrow =  $driver.find_element :xpath => "//span[@class='airstream-sprite airstream-carousel-next-icon']"
    arrow.click
   end
end
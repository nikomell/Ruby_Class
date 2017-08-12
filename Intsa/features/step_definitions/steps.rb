Then /^Insta$/ do
 $driver.get "https://www.instagram.com"
end


Then /^create account$/ do
  sleep 3
  fistnm = Faker::Name.first_name
  lastnm = Faker::Name.last_name
  fulnm = fistnm + " " + lastnm

  element = $driver.find_element :xpath => "//input[@name='emailOrPhone']"
  element.click
  element.send_keys Faker::Internet.free_email(fulnm)

  element = $driver.find_element :xpath => "//input[@name='fullName']"
  element.click
  element.send_keys fulnm
  sleep 2

  element = $driver.find_element :xpath => "//input[@name='password']"
  element.click
  element.send_keys Faker::Internet.password(8, 12)

  # element = $driver.find_element :xpath => "//button[@class='_ah57t _84y62 _i46jh _rmr7s' and text() = 'Sign up']"
  # $driver.action.move_to(element).perform
  # element.click
  # sleep 4

  element = $driver.find_element :xpath => "//button[@class='_ah57t _84y62 _i46jh _rmr7s' and text() = 'Sign up']"
  $driver.action.double_click(element).perform
  sleep 4

  # element = $driver.find_element :xpath => "//button[@class='_ah57t _84y62 _i46jh _rmr7s' and text() = 'Sign up']"
  # element.click
  # sleep 4

end

Then /^search$/ do
  # element = $driver.find_element :xpath => "//input[@class='_9x5sw _qy55y']"
  # element.click
  # element.send_keys "igor_qa"

  sleep 2
  $driver.get "https://www.instagram.com/igor_qa/"

  # element = $driver.find_element :xpath => "//a[@class='_k2vj6'][0]"
  # $driver.action.move_to(element).perform
  # element.click
  # sleep 2

  element = $driver.find_element :xpath => "//button[@class='_ah57t _84y62 _frcv2 _rmr7s' and text() = 'Follow']"
  element.click

end
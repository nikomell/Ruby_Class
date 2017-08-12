
Then(/^go Amazon$/) do
  $driver.get ("http://www.amazon.com")

end


Then(/^([^"]*)$/) do |a|
  element = $driver.find_
end
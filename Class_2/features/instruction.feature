Feature: Regression test

Scenario: 1) Verify that you can add items using Department link
  Then open Amazon
  Then go the Dept_link
  Then click the Books section
  Then select the Top 20 lists in Books
  Then pick the book 6
  Then add to cart
  Then check if 1 item in cart
  Then go the Dept_link
  Then click the Books section
  Then select the Award winners
  Then pick the book 5
  Then add to cart
  Then check if 2 item in cart
  Then press the Home logo



  Scenario: 2)Check all link in Amazon Music
  Then open Amazon
  Then go the Dept_link
  Then click on Amazon Music Unlimited
  Then click on Prime Music
  Then click on Open Web Player
  Then click on CDs & Vinyl
  Then click on Download Store
  Then press the Home logo

Scenario: 3) Search Engine(Verify the search result from dropdown menu"All")
  Then open Amazon
  Then search in Alexa Skills
  Then search for Hello
  Then search in Amazon Devices
  Then search for Kindle
  Then pick item 4
  Then add to cart
  Then check if 1 item into cart
  Then press the Home logo
#  Then search in Amazon Fresh
#  Then search for Banana
#  Then enter zip code
  Then search in Electronics
  Then search for Google Home
  #Then choose in Featured 0 category
  Then pick item 4
  Then add to cart
  Then press the Home logo


  Scenario:  Amazon Basic Cannot find
  Then open Amazon
  Then select Home
  Then pick item 3
  Then add to cart
  Then check if 1 item into cart
  Then select Bluetooth
  Then  pick item 4
  Then add to cart
  Then check if 2 item in cart
  Then select Pets
  Then pick item 5
  Then add to cart
  Then check if 3 item in cart


#  Scenario:  Verify that you can add item using Department link
#Then open Amazon
#Then go the Dept_link
#Then click the Textbooks section
#Then pick the book
#Then add to cart
#Then check if 2 item in cart
#Then press the Home logo




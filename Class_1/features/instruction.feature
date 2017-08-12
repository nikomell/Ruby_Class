Feature: Regression test

  Scenario: 1) Add item to the cart by using search field

    Then open Amazon
    Then enter the text into the search field
    Then click on the search button
    Then select 1st avaible toy on the page
    Then press button add item to the cart
    Then verify the item in the cart
  #Expected result: itms is add to the cart

  Scenario: 2) Verify that you can add item using Department link
   Then open Amazon
   Then go the Dept_link
   Then click the book section
    Then select the Top 20 list
    Then pick the book
    Then add to cart
    Then check if item in cart
    Then press the Home logo


   Scenario: 3) Delete item from the cart
     Then open Amazon
     Then search for hair product
     Then submit search
     Then click on 1st product
     Then add product to the cart
     Then verify the item in the cart
     Then go the cart delete one product
     Then delete item from the cart
     Then verify the no item in the cart
     Then press the Home logo

  Scenario: 4) Shopping thru Today's Deals category
    Then open Amazon
    Then go to Today's Deals
    Then pick  the item
    Then put into cart
    Then verify the item in the cart
    Then go Home

  Scenario: 5) Check carousel on Home page
      Then open Amazon
      Then find product on main page
      Then the quantity for two
      Then put into cart
      Then thanks no protection
      Then verify the items in the cart
      Then go Home







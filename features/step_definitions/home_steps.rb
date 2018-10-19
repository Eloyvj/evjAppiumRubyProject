require 'rspec/expectations'
require_relative "../page_objects/home_po.rb"
home = Home.new

Given("I launch app") do
    @isDisplayed = home.btnShowAllIsDisplayed
    expect(@isDisplayed).to be true # using expect from rspec-expectations lib
end
  
Then("I type {string} in search field") do |string|
   home.clickActionSearchButton
   home.fillSearchSrcText (string)
end
  
Then("I press on search button") do
    home.pressEnterToSearch    
end
  
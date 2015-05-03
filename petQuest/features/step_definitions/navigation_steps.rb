Given(/^I am on the initial screen/) do 
 visit 'localhost:3000/pets/new'
end

Given(/^I fill in petname with "(.*?)"$/) do |petname|
  fill_in 'Name', :with =>petname
end

Given(/^I fill in age with "(.*?)"$/) do |age|
  fill_in 'Age', :with => age
end

When(/^I press "Save"$/) do 
 click_button("Save Pet")
end

Then(/^the page should have the added petname with "(.*?)" And \t\t  "(.*?)"$/) do |name, age|
assert page.has_content?(name)
assert page.has_content?(age)
end

Given(/^I am on the petinput/) do 
 visit 'localhost:3000'
end

When(/^I press "See Food"$/) do 
 click_link("See Food")
end

Then(/^the page should have food "(.*?)"$/) do |salmon|
  assert page.has_content?(salmon)
end


Given(/^I am on the see food screen$/) do
visit 'localhost:3000/foods'
end

When(/^I press "(.*?)" to "(.*?)"$/) do |arg1, arg2|
visit("localhost:3000/recipes/1/add")
end

Then(/^the page should have "(.*?)"$/) do |arg1|

end




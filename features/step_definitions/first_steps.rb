Given(/^I am on the pet input screen$/) do
  visit 'https://thawing-escarpment-9681.herokuapp.com'
end

When(/^enter "([^"]*)" for petname$/) do |arg1|
  fill_in 'fullname', :with => arg1

end

Then(/^Carly should be shown$/) do
  page.should have_content("Carly")
end

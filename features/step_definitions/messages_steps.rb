Given(/^I am on the site$/) do
  visit root_path
end

Given(/^There is a user called "([^"]*)" with email "([^"]*)" in our database$/) do |name, email|
  User.create(name: name, email: email, password: "password")
end

Given(/^I log in as "([^"]*)"$/) do |arg1|
  user = User.first
  login_as(user)
end

Then(/^I should be able to press "([^"]*)"$/) do |button|
  click_link_or_button button
end

Then(/^I choose "([^"]*)" as a recipient from the list$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I fill in the field "([^"]*)" with "([^"]*)"$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I press "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see the text "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

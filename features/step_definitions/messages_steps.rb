Given(/^I am on the site$/) do
  visit root_path
end

Given(/^There is a user called "([^"]*)" with email "([^"]*)" in our database$/) do |name, email|
  FactoryGirl.create(:user, name: name, email: email)
end

Given(/^I log in as "([^"]*)"$/) do |name|
  user = User.find_by name: name
  login_as(user, :scope => :user)
end

Given(/^I am on the inbox page$/) do
  visit mailbox_inbox_path
end

Then(/^I should be able to press "([^"]*)"$/) do |button|
  # binding.pry
  click_link_or_button button
end

Then(/^I choose "([^"]*)" as a recipient from the list$/) do |user|
  select "Faraz", :from => "conversation_recipients"
  expect(find_field('conversation_recipients').find('option[selected]').text).to eq('Faraz')
end

Then(/^I fill in the field "([^"]*)" with "([^"]*)"$/) do |field, content|
  
end

Then(/^I press "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see the text "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

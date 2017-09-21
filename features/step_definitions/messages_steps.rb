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

Then(/^I press "([^"]*)"$/) do |button|
  click_link_or_button button
end

Then(/^I choose "([^"]*)" as a recipient from the list$/) do |user|
  select "Faraz", :from => "conversation_recipients"
  expect(find_field('conversation_recipients').find('option[selected]').text).to eq('Faraz')
end

Then(/^I fill in the field "([^"]*)" with "([^"]*)"$/) do |field, content|
  fill_in field, with: content
end

Then(/^I should see the text "([^"]*)"$/) do |message|
  expect(page).to have_content message
end

Given(/^I have mail from "([^"]*)"$/) do |name|
  sender = User.find_by name: name
  receiver = User.find_by name: 'Raoul'
  sender.send_message(receiver, "body", "subject")
end
